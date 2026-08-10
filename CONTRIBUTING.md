# Contributing to Codefresh Homebrew Tap

Thank you for your interest in contributing to the Codefresh Homebrew tap!

## Homebrew Tap Trust

This tap is subject to Homebrew's tap trust requirements starting with Homebrew 6.0.0 (or 5.2.0). Users must explicitly trust this tap or individual formulae before installation.

## Updating Formulae

When updating formulae in this tap, please follow these guidelines:

### For Codefresh CLI v1 (codefresh)

1. Update the version number
2. Update the download URL
3. Update the SHA256 checksum
4. Test the formula locally

Example:

```ruby
class Codefresh < Formula
  desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
  homepage "http://cli.codefresh.io"
  url "https://github.com/codefresh-io/cli/releases/download/vX.Y.Z/codefresh-vX.Y.Z-macos-x64.tar.gz"
  version "vX.Y.Z"
  sha256 "new_sha256_hash_here"

  def install
    bin.install "codefresh"
  end

  test do
    system "#{bin}/codefresh version"
  end
end
```

### For Codefresh CLI v2 (cf2)

1. Update the Git tag
2. Update the revision (commit SHA)
3. Test the formula locally

Example:

```ruby
class Cf2 < Formula
  desc "Codefresh CLI tool, V2"
  homepage "https://codefresh.io/"
  url "https://github.com/codefresh-io/cli-v2.git",
    tag:      "vX.Y.Z",
    revision: "new_commit_sha_here"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "cli-package", "DEV_MODE=false"
    bin.install "dist/cf" => "cf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cf version")
    assert_match "must provide context name to use\"",
      shell_output("#{bin}/cf config use-context 2>&1", 1)
  end
end
```

## Testing Locally

Before submitting a pull request, test your changes locally:

```sh
# Tap your local repository
brew tap codefresh-io/cli /path/to/your/local/homebrew-cli

# Trust the tap
brew trust codefresh-io/cli

# Install and test the formula
brew install codefresh-io/cli/codefresh --build-from-source
codefresh version

# Or for cf2
brew install codefresh-io/cli/cf2 --build-from-source
cf version
```

## Pull Request Process

1. Create a feature branch from `master`
2. Make your changes
3. Test locally (see above)
4. Commit with a clear message describing the changes
5. Push to your fork
6. Create a pull request with:
   - Clear description of changes
   - Version number being updated
   - Link to the upstream release (if applicable)

## Formula Guidelines

- Follow [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook) guidelines
- Use `brew audit --strict --online` to check for issues
- Keep formulae simple and maintainable
- Document any non-obvious choices in comments

## Security Considerations

- Always verify SHA256 checksums for downloads
- Review upstream releases before updating
- Test formulae in a clean environment
- Report any security concerns to security@codefresh.io

## Getting Help

- [Homebrew Documentation](https://docs.brew.sh/)
- [Homebrew Tap Trust](https://docs.brew.sh/Tap-Trust)
- [Codefresh Documentation](https://codefresh.io/docs/)

## Code of Conduct

Please be respectful and constructive in all interactions. This project follows the [Homebrew Code of Conduct](https://github.com/Homebrew/.github/blob/HEAD/CODE_OF_CONDUCT.md).

## Appendix: Suggested GitHub Actions Workflow

For maintainers with appropriate GitHub permissions, consider adding this workflow to `.github/workflows/tests.yml` to automatically validate formulae:

```yaml
name: Homebrew Formula Tests

on:
  push:
    branches: [ master, main ]
  pull_request:
    branches: [ master, main ]

jobs:
  test:
    runs-on: macos-latest
    steps:
      - name: Checkout repository
        uses: actions/checkout@v4

      - name: Set up Homebrew
        id: set-up-homebrew
        uses: Homebrew/actions/setup-homebrew@master

      - name: Tap this repository
        run: |
          REPO_PATH="${GITHUB_WORKSPACE}"
          REPO_NAME="${GITHUB_REPOSITORY#*/}"
          TAP_PATH="$(brew --repo)/Library/Taps/${GITHUB_REPOSITORY_OWNER}/homebrew-${REPO_NAME#homebrew-}"
          
          mkdir -p "$(dirname "${TAP_PATH}")"
          ln -s "${REPO_PATH}" "${TAP_PATH}"

      - name: Trust tap
        run: brew trust "${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY#*/homebrew-}"
        env:
          HOMEBREW_REQUIRE_TAP_TRUST: 1

      - name: Test formulae
        run: |
          brew audit --strict --online "${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY#*/homebrew-}/codefresh" || true
          brew audit --strict --online "${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY#*/homebrew-}/cf2" || true
        env:
          HOMEBREW_REQUIRE_TAP_TRUST: 1

      - name: Verify formulae syntax
        run: |
          brew info "${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY#*/homebrew-}/codefresh"
          brew info "${GITHUB_REPOSITORY_OWNER}/${GITHUB_REPOSITORY#*/homebrew-}/cf2"
        env:
          HOMEBREW_REQUIRE_TAP_TRUST: 1
```

Note: This workflow requires push access with the `workflow` scope enabled on the GitHub token.
