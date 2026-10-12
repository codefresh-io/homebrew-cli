# Tap Signing and Trust

This document explains how to set up and maintain GPG signing for the `codefresh-io/cli` Homebrew tap to ensure it is trusted by Homebrew.

## Why Tap Signing Matters

Starting with Homebrew 5.2.0/6.0.0, tap trust verification will become mandatory by default. Unsigned taps will be ignored when `HOMEBREW_REQUIRE_TAP_TRUST` is set, which will become the default behavior.

## Trust Status

This tap is configured for GPG signing to ensure trust verification.

### Authorized Signers

The following GPG keys are authorized to sign commits and releases for this tap:

- Key fingerprints are stored in `.trusted-keys` file
- All formula updates should be signed by one of these keys

## Setup for Maintainers

### 1. Generate a GPG Key (if you don't have one)

```bash
gpg --full-generate-key
```

Follow the prompts:
- Choose RSA and RSA
- Key size: 4096 bits
- Expiration: Set appropriately (e.g., 1-2 years)
- Use your GitHub email address

### 2. Configure Git to Sign Commits

```bash
# List your GPG keys to find the key ID
gpg --list-secret-keys --keyid-format=long

# Configure git to use your GPG key
git config --global user.signingkey YOUR_KEY_ID
git config --global commit.gpgsign true
git config --global tag.gpgsign true
```

### 3. Add Your GPG Key to GitHub

```bash
# Export your public key
gpg --armor --export YOUR_KEY_ID

# Copy the output and add it to your GitHub account at:
# https://github.com/settings/keys
```

### 4. Add Your Key to the Tap

Your GPG key fingerprint should be added to the `.trusted-keys` file:

```bash
# Get your key fingerprint
gpg --fingerprint YOUR_KEY_ID

# Add it to .trusted-keys (maintainers with write access)
echo "YOUR_FINGERPRINT  Your Name <your.email@example.com>" >> .trusted-keys
```

## Setup for Bot Accounts

For automated formula updates via bot accounts (codefresh-git-integration[bot], cf-ci-bot-v2):

### 1. Generate a GPG Key for the Bot

```bash
# Use a non-interactive key generation
gpg --batch --generate-key <<EOF
%no-protection
Key-Type: RSA
Key-Length: 4096
Subkey-Type: RSA
Subkey-Length: 4096
Name-Real: Bot Name
Name-Email: bot-email@users.noreply.github.com
Expire-Date: 2y
%commit
EOF
```

### 2. Export the Private Key

```bash
gpg --armor --export-secret-keys BOT_KEY_ID > bot-private-key.asc
```

### 3. Store as GitHub Secret

Add the private key as a repository or organization secret:
- Secret name: `BOT_GPG_PRIVATE_KEY`
- Value: Contents of `bot-private-key.asc`

Also store the passphrase (if used):
- Secret name: `BOT_GPG_PASSPHRASE`
- Value: The passphrase

### 4. Update CI/CD Workflows

Example GitHub Actions workflows are provided in `.github/workflows-examples/`:
- `sign-commits.yml` - Sign existing commits with GPG
- `update-formula.yml` - Automated formula updates with signing
- `verify-signatures.yml` - Verify all commits are GPG-signed

See `.github/workflows-examples/README.md` for instructions on enabling these workflows.

Note: A repository administrator with a token that has `workflow` scope is required to add or modify GitHub Actions workflows.

## Verifying Signatures

Users can verify tap signatures:

```bash
# Clone the tap
brew tap codefresh-io/cli

# Navigate to the tap directory
cd $(brew --repository)/Library/Taps/codefresh-io/homebrew-cli

# Verify the latest commit is signed
git log --show-signature -1

# Import trusted keys
gpg --import .trusted-keys.gpg

# Verify commit signatures
git verify-commit HEAD
```

## Trusting the Tap

Once signing is properly configured, users can trust the tap:

```bash
# Trust all formulae from this tap
brew trust codefresh-io/cli

# Or trust specific formulae
brew trust --formula codefresh-io/cli/cf2
brew trust --formula codefresh-io/cli/codefresh
```

## Troubleshooting

### Commits Not Being Signed

Check your git configuration:

```bash
git config user.signingkey
git config commit.gpgsign
```

### GPG Agent Issues

If GPG prompts don't appear:

```bash
export GPG_TTY=$(tty)
```

Add this to your shell profile for persistence.

### Key Not Found

Ensure your key is properly loaded:

```bash
gpg --list-secret-keys
```

## References

- [Homebrew Tap Trust Documentation](https://docs.brew.sh/Tap-Trust)
- [GitHub GPG Signing Guide](https://docs.github.com/en/authentication/managing-commit-signature-verification)
- [GPG Documentation](https://gnupg.org/documentation/)
