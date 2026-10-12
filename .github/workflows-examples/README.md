# GitHub Actions Workflow Examples

This directory contains example GitHub Actions workflows for implementing GPG signing in this Homebrew tap.

## Installation

To enable these workflows, a repository administrator with appropriate permissions needs to:

1. **Move workflows to the correct location**:
   ```bash
   mv .github/workflows-examples/*.yml .github/workflows/
   ```

2. **Configure GPG secrets** (see [BOT_SETUP.md](../../BOT_SETUP.md)):
   - `BOT_GPG_PRIVATE_KEY` - The private GPG key for signing commits
   - `BOT_GPG_PASSPHRASE` - The passphrase for the GPG key (if used)

3. **Commit and push** the workflows:
   ```bash
   git add .github/workflows/
   git commit -S -m "Enable GPG signing workflows"
   git push
   ```

Note: Adding or modifying workflows requires a GitHub token with `workflow` scope.

## Available Workflows

### 1. `sign-commits.yml` - Sign Commits with GPG

Manual workflow to sign existing commits with GPG.

**Usage:**
- Go to Actions > Sign Commits with GPG > Run workflow
- Optionally specify a commit SHA to sign (defaults to HEAD)

**What it does:**
- Imports the GPG key from secrets
- Amends the specified commit with a GPG signature
- Force-pushes the signed commit

### 2. `update-formula.yml` - Update Formula with GPG Signature

Automates formula updates with GPG signing.

**Usage:**
- Go to Actions > Update Formula with GPG Signature > Run workflow
- Provide: formula name, version, URL, and SHA256 checksum

**What it does:**
- Updates the specified formula file
- Commits changes with GPG signature
- Pushes to master branch
- Verifies the signature

### 3. `verify-signatures.yml` - Verify GPG Signatures

Automatically verifies that all commits are GPG-signed.

**When it runs:**
- On pull requests to master/main
- On pushes to master/main

**What it does:**
- Checks all commits for GPG signatures
- Fails if any unsigned commits are found
- Posts a comment on PRs with instructions if signatures are missing

## Why These Are Examples

These workflow files are provided as examples because:

1. **Permission Requirements**: Adding or modifying GitHub Actions workflows requires a Personal Access Token with the `workflow` scope
2. **Security**: Repository administrators should review and approve workflow changes
3. **Customization**: Your organization may have different workflow requirements or security policies

## Next Steps

After enabling these workflows:

1. Configure bot accounts with GPG keys (see [BOT_SETUP.md](../../BOT_SETUP.md))
2. Add bot GPG fingerprints to `.trusted-keys`
3. Test the workflows with a trial formula update
4. Update your CI/CD pipelines to use the workflows or implement GPG signing

## Manual Alternative

If you prefer not to use GitHub Actions, you can implement GPG signing in your existing CI/CD system. See [BOT_SETUP.md](../../BOT_SETUP.md) for examples with:
- Codefresh pipelines
- Other CI/CD systems

## Support

For questions about implementing these workflows, see:
- [SIGNING.md](../../SIGNING.md) - GPG signing setup
- [BOT_SETUP.md](../../BOT_SETUP.md) - Bot account configuration
- [CONTRIBUTING.md](../../CONTRIBUTING.md) - Contributing guidelines
