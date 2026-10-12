# Bot Account GPG Signing Setup

This guide provides instructions for configuring the bot accounts that update this Homebrew tap to sign their commits with GPG.

## Current Bot Accounts

This tap is currently updated by the following bot accounts:
- `codefresh-git-integration[bot]` (151943927+codefresh-git-integration[bot]@users.noreply.github.com)
- `cf-ci-bot-v2` (107364971+cf-ci-bot-v2@users.noreply.github.com)

## Why Sign Bot Commits?

Homebrew requires tap trust verification for security. All commits to this tap should be signed with GPG to:
1. Ensure authenticity of formula updates
2. Prevent unauthorized modifications
3. Meet Homebrew's upcoming trust requirements (v5.2.0/6.0.0)

## Setup Steps

### 1. Generate GPG Key for Bot Account

On a secure system with GPG installed:

```bash
# Generate a GPG key for the bot
gpg --batch --generate-key <<EOF
%no-protection
Key-Type: RSA
Key-Length: 4096
Subkey-Type: RSA
Subkey-Length: 4096
Name-Real: codefresh-bot
Name-Email: bot@codefresh.io
Expire-Date: 2y
%commit
EOF
```

Note: You can add a passphrase for additional security, but you'll need to store it securely.

### 2. Export the Keys

```bash
# List keys to find the key ID
gpg --list-secret-keys --keyid-format=long

# Export private key (KEEP THIS SECURE!)
gpg --armor --export-secret-keys KEY_ID > bot-private-key.asc

# Export public key
gpg --armor --export KEY_ID > bot-public-key.asc

# Get fingerprint
gpg --fingerprint KEY_ID
```

### 3. Add Public Key to GitHub

1. Go to the bot account settings on GitHub
2. Navigate to SSH and GPG keys: https://github.com/settings/keys
3. Click "New GPG key"
4. Paste the contents of `bot-public-key.asc`
5. Save

### 4. Store Private Key as GitHub Secret

#### For Repository Secrets:

1. Navigate to the repository settings
2. Go to Secrets and variables > Actions
3. Add new repository secret:
   - Name: `BOT_GPG_PRIVATE_KEY`
   - Value: Contents of `bot-private-key.asc`

If you used a passphrase:
   - Name: `BOT_GPG_PASSPHRASE`
   - Value: The passphrase

#### For Organization Secrets (recommended):

1. Navigate to organization settings
2. Go to Secrets and variables > Actions
3. Add organization secret accessible to this repository
   - Same names as above

### 5. Update Trusted Keys File

Add the bot's GPG fingerprint to `.trusted-keys`:

```bash
# Add the fingerprint and identity
echo "FINGERPRINT_HERE  codefresh-bot <bot@codefresh.io>" >> .trusted-keys

# Commit the change
git add .trusted-keys
git commit -S -m "Add bot GPG key to trusted keys"
git push
```

### 6. Configure CI/CD System

The exact configuration depends on your CI/CD system:

#### GitHub Actions

Use the workflows provided in `.github/workflows/`:
- `update-formula.yml` - For automated formula updates with GPG signing
- `sign-commits.yml` - For signing existing commits

The workflows use the `crazy-max/ghaction-import-gpg` action to import the GPG key.

#### Codefresh Pipeline

If using Codefresh pipelines, add these steps:

```yaml
steps:
  import_gpg_key:
    title: Import GPG Key
    image: codefreshio/cli
    commands:
      - echo "$BOT_GPG_PRIVATE_KEY" | gpg --import
      - gpg --list-secret-keys
  
  configure_git:
    title: Configure Git Signing
    image: codefreshio/cli
    commands:
      - git config --global user.signingkey BOT_KEY_ID
      - git config --global commit.gpgsign true
      - git config --global user.name "codefresh-bot"
      - git config --global user.email "bot@codefresh.io"
  
  update_and_sign:
    title: Update Formula
    image: codefreshio/cli
    commands:
      - # Your formula update commands here
      - git add Formula/*.rb
      - git commit -S -m "update formula version"
      - git push
```

#### Other CI Systems

For other CI/CD systems:

1. Store the private key as a secret environment variable
2. In your build script:
   ```bash
   # Import GPG key
   echo "$BOT_GPG_PRIVATE_KEY" | gpg --import
   
   # Configure git
   git config user.signingkey BOT_KEY_ID
   git config commit.gpgsign true
   git config user.name "codefresh-bot"
   git config user.email "bot@codefresh.io"
   
   # Make your changes and commit
   git commit -S -m "your message"
   ```

### 7. Test the Configuration

Create a test commit to verify signing works:

```bash
# Make a small change
echo "# Test" >> README.md

# Commit with signature
git commit -S -m "test: verify GPG signing"

# Verify the signature
git verify-commit HEAD

# If successful, push
git push
```

## Security Best Practices

1. **Never expose private keys**: Store them only in secure secret management systems
2. **Use passphrase protection**: Add an extra layer of security to private keys
3. **Rotate keys regularly**: Set expiration dates and renew before expiry
4. **Limit key access**: Only authorized maintainers should have access to bot keys
5. **Audit signatures**: Regularly verify commits are properly signed
6. **Revoke compromised keys**: If a key is compromised, revoke it immediately

## Revoking a Key

If a GPG key is compromised:

```bash
# Generate revocation certificate
gpg --output revoke.asc --gen-revoke KEY_ID

# Import and publish revocation
gpg --import revoke.asc
gpg --keyserver keyserver.ubuntu.com --send-keys KEY_ID

# Remove from trusted keys
# Edit .trusted-keys and remove the compromised fingerprint

# Generate new key and repeat setup
```

## Troubleshooting

### "gpg: signing failed: Inappropriate ioctl for device"

```bash
export GPG_TTY=$(tty)
```

### "gpg: signing failed: No secret key"

Ensure the key is properly imported:

```bash
gpg --list-secret-keys
```

### Commits not signed in CI/CD

Check that:
1. The secret is properly set in the CI/CD system
2. The key is imported before committing
3. Git is configured with `commit.gpgsign = true`
4. The `user.signingkey` is set correctly

## Key Rotation

When keys approach expiration:

1. Generate a new key following step 1
2. Add new key to GitHub (step 3)
3. Update secrets with new private key (step 4)
4. Add new fingerprint to `.trusted-keys` (step 5)
5. Keep old key in `.trusted-keys` for historical verification
6. After transition period, remove old key

## References

- [Homebrew Tap Trust](https://docs.brew.sh/Tap-Trust)
- [GPG Documentation](https://gnupg.org/documentation/)
- [GitHub Actions GPG Import](https://github.com/crazy-max/ghaction-import-gpg)
- [Signing Git Commits](https://git-scm.com/book/en/v2/Git-Tools-Signing-Your-Work)
