# Contributing to homebrew-cli

Thank you for your interest in contributing to the Codefresh Homebrew tap!

## Updating Formulae

### When to Update

Formulae should be updated when:
- A new version of Codefresh CLI is released
- Security vulnerabilities are discovered in current versions
- Bug fixes are available
- Build process changes are needed

### How to Update

#### Updating `codefresh` (V1 CLI)

1. Check for new releases at https://github.com/codefresh-io/cli/releases
2. Download the new binary and calculate SHA256:
   ```sh
   curl -L -o codefresh.tar.gz https://github.com/codefresh-io/cli/releases/download/vX.Y.Z/codefresh-vX.Y.Z-macos-x64.tar.gz
   shasum -a 256 codefresh.tar.gz
   ```
3. Update `Formula/codefresh.rb`:
   - Change `url` to point to new version
   - Update `version` string
   - Update `sha256` with calculated value
4. Test the formula:
   ```sh
   brew install --build-from-source ./Formula/codefresh.rb
   brew test codefresh
   ```

#### Updating `cf2` (V2 CLI)

1. Check for new releases at https://github.com/codefresh-io/cli-v2/releases
2. Note the git tag and commit SHA
3. Update `Formula/cf2.rb`:
   - Change `tag` to new version (e.g., `v1.0.8`)
   - Update `revision` to the commit SHA of that tag
4. Test the formula:
   ```sh
   brew install --build-from-source ./Formula/cf2.rb
   brew test cf2
   ```

### Formula Best Practices

- **Use HTTPS URLs only**
- **Include SHA256 checksums** for binary downloads
- **Pin to specific versions/commits** using tags and revision SHAs
- **Test on macOS** if possible (GitHub Actions runs on Linux)
- **Follow Homebrew style guide**: Run `brew style Formula/your-formula.rb`
- **Audit changes**: Run `brew audit --strict Formula/your-formula.rb`

## Testing Changes

### Local Testing

Before submitting a PR:

1. **Test installation**:
   ```sh
   brew install --build-from-source ./Formula/formula-name.rb
   ```

2. **Test functionality**:
   ```sh
   brew test formula-name
   ```

3. **Run audit**:
   ```sh
   brew audit --strict --online Formula/formula-name.rb
   ```

4. **Check style**:
   ```sh
   brew style Formula/formula-name.rb
   ```

### CI Testing

Pull requests automatically run:
- Formula auditing
- Style checks
- Installation tests
- Security validation

Check the Actions tab for results.

## Pull Request Process

1. **Fork this repository**
2. **Create a feature branch**:
   ```sh
   git checkout -b update-formula-vX.Y.Z
   ```
3. **Make your changes**
4. **Test thoroughly** (see above)
5. **Commit with clear message**:
   ```sh
   git commit -m "formula-name: update to version X.Y.Z"
   ```
6. **Push and create PR**:
   ```sh
   git push origin update-formula-vX.Y.Z
   ```
7. **Describe changes** in PR description, including:
   - What version you're updating to
   - Link to release notes
   - What you tested

## Commit Message Format

Follow Homebrew conventions:

```
formula-name: update to version X.Y.Z

- Updated URL and SHA256 for new release
- Tested on macOS Sonoma

Release notes: https://github.com/codefresh-io/cli/releases/tag/vX.Y.Z
```

Other common prefixes:
- `formula-name: add new formula`
- `formula-name: fix build failure`
- `formula-name: add test`
- `README: update installation instructions`
- `workflow: improve CI testing`

## Security

### Reporting Security Issues

See [SECURITY.md](SECURITY.md) for how to report security vulnerabilities.

### Security in Formulae

When contributing:
- Only use official Codefresh sources
- Verify checksums for binary downloads
- Don't hardcode credentials
- Use HTTPS for all URLs
- Minimize arbitrary code execution

## Code of Conduct

This project follows the Homebrew Code of Conduct. Be respectful and constructive.

## Questions?

- **For formula issues**: Open an issue in this repository
- **For CLI bugs**: Report in the respective CLI repository ([cli](https://github.com/codefresh-io/cli) or [cli-v2](https://github.com/codefresh-io/cli-v2))
- **For Homebrew questions**: See [Homebrew documentation](https://docs.brew.sh)

## Resources

- [Homebrew Formula Cookbook](https://docs.brew.sh/Formula-Cookbook)
- [Homebrew Acceptable Formulae](https://docs.brew.sh/Acceptable-Formulae)
- [Homebrew Ruby Style Guide](https://docs.brew.sh/Ruby-Style-Guide)
- [Homebrew Tap Trust Documentation](https://docs.brew.sh/Tap-Trust)
