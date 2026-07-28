# Contributing to codefresh-io/cli Homebrew Tap

Thank you for your interest in contributing to the Codefresh Homebrew tap!

## Prerequisites

Before contributing, please ensure you have:

1. **Homebrew installed**: `brew --version`
2. **GPG installed**: `brew install gnupg`
3. **GPG key configured**: See [SIGNING.md](SIGNING.md) for setup instructions
4. **Git configured for signing**:
   ```bash
   git config --global user.signingkey YOUR_GPG_KEY_ID
   git config --global commit.gpgsign true
   ```

## GPG Signing Requirement

**All commits to this repository must be GPG-signed.** This is required for Homebrew tap trust verification.

If you're new to GPG signing, please read [SIGNING.md](SIGNING.md) for detailed setup instructions.

## Contributing a Formula Update

### 1. Fork and Clone

```bash
git clone https://github.com/YOUR_USERNAME/homebrew-cli.git
cd homebrew-cli
```

### 2. Create a Branch

```bash
git checkout -b update-formula-version
```

### 3. Update the Formula

Edit the appropriate formula file in `Formula/`:

- `Formula/codefresh.rb` - Codefresh CLI V1
- `Formula/cf2.rb` - Codefresh CLI V2

Update the version, URL, and SHA256 checksum:

```ruby
class Codefresh < Formula
  desc "Codefresh CLI"
  homepage "http://cli.codefresh.io"
  url "https://github.com/codefresh-io/cli/releases/download/vX.Y.Z/codefresh-vX.Y.Z-macos-x64.tar.gz"
  version "vX.Y.Z"
  sha256 "NEW_SHA256_CHECKSUM"
  # ...
end
```

To get the SHA256 checksum:

```bash
curl -sL DOWNLOAD_URL | shasum -a 256
```

### 4. Test the Formula

```bash
# Audit the formula
brew audit --strict Formula/codefresh.rb

# Test installation
brew install --build-from-source ./Formula/codefresh.rb

# Test the installed binary
codefresh version

# Uninstall after testing
brew uninstall codefresh
```

### 5. Commit with GPG Signature

```bash
git add Formula/codefresh.rb
git commit -S -m "update formula codefresh to version vX.Y.Z"
```

**Important**: The `-S` flag signs the commit with your GPG key.

Verify your commit is signed:

```bash
git log --show-signature -1
```

You should see "Good signature from..." in the output.

### 6. Push and Create Pull Request

```bash
git push origin update-formula-version
```

Create a pull request on GitHub. The PR will automatically:
- Verify that all commits are GPG-signed
- Run formula audits
- Check for common issues

## Contributing a New Formula

1. Create a new file in `Formula/` directory
2. Follow the [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
3. Ensure all commits are GPG-signed
4. Submit a pull request

## Automated Updates

This repository is primarily updated by automated bots:
- `codefresh-git-integration[bot]`
- `cf-ci-bot-v2`

These bots automatically create and update formulas when new versions are released. However, manual contributions are still welcome!

## Code Review Process

1. All PRs require review from a maintainer
2. All commits must be GPG-signed (automated check)
3. Formulas must pass `brew audit --strict`
4. Changes must be tested on macOS

## Troubleshooting

### My commit isn't signed

Check your Git configuration:

```bash
git config user.signingkey  # Should show your GPG key ID
git config commit.gpgsign   # Should be true
```

If not set:

```bash
git config --global user.signingkey YOUR_GPG_KEY_ID
git config --global commit.gpgsign true
```

### GPG signing fails

```bash
# Ensure GPG is working
gpg --list-secret-keys

# Set GPG_TTY if needed
export GPG_TTY=$(tty)
```

### Need to sign existing commits

```bash
# Sign the last commit
git commit --amend --no-edit -S

# Sign multiple commits (interactive rebase)
git rebase --exec 'git commit --amend --no-edit -n -S' -i origin/master
```

## Getting Help

- **GPG Setup**: See [SIGNING.md](SIGNING.md)
- **Bot Configuration**: See [BOT_SETUP.md](BOT_SETUP.md) (maintainers only)
- **Homebrew Formulas**: [Homebrew Documentation](https://docs.brew.sh/)
- **Issues**: Open an issue in this repository

## License

By contributing, you agree that your contributions will be licensed under the same license as this project (see [LICENSE](LICENSE)).

## Questions?

Feel free to open an issue if you have any questions about contributing!
