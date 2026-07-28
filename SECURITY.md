# Security Policy

## Tap Security and Trust

This Homebrew tap is maintained by Codefresh and provides formulae for official Codefresh CLI tools. We take security seriously and follow best practices to ensure the integrity of our formulae.

### What We Do

- **Official Source Only**: All formulae in this tap install binaries or build from official Codefresh repositories
- **Checksum Verification**: Binary downloads include SHA256 checksums to verify integrity
- **Transparent Build Process**: Source-based formulae (like `cf2`) build from tagged releases in public GitHub repositories
- **Regular Updates**: We keep formulae updated with the latest stable releases
- **Minimal Code**: Formulae contain only the necessary installation logic, reducing attack surface

### What You Should Do

Before trusting this tap, you should:

1. **Review the Formulae**: All formulae are visible in the `Formula/` directory
2. **Verify the Source**: Check that URLs point to official `github.com/codefresh-io/` repositories
3. **Check Checksums**: For binary downloads, verify SHA256 checksums match official releases
4. **Monitor Updates**: Watch this repository for changes if you want to track updates

### Homebrew Tap Trust

Starting with Homebrew 6.0.0, taps require explicit trust to protect users from potentially malicious code. This is a security feature, not a deficiency of this tap.

To trust this tap:
```sh
brew trust codefresh-io/cli
```

Or trust individual formulae:
```sh
brew trust --formula codefresh-io/cli/codefresh
brew trust --formula codefresh-io/cli/cf2
```

### Reporting Security Issues

If you discover a security vulnerability in this tap or our formulae, please report it responsibly:

1. **Do not** open a public GitHub issue
2. Use GitHub's [Security Advisories](https://github.com/codefresh-io/homebrew-cli/security/advisories) feature
3. Or email security concerns to Codefresh security team

Please include:
- Description of the vulnerability
- Steps to reproduce
- Potential impact
- Suggested fix (if applicable)

We will respond to security reports within 48 hours and work to address valid issues promptly.

### Supply Chain Security

Our formulae follow these supply chain security practices:

- **Pinned Versions**: We use specific version tags and commit SHAs
- **HTTPS Only**: All downloads use HTTPS URLs
- **Official Sources**: Downloads come only from official Codefresh repositories
- **License Declarations**: Formulae include license information where applicable
- **Build Transparency**: Source builds use public `Makefile` targets from official repositories

### Verification

You can verify the integrity of this tap by:

1. **Checking the Repository**: This is the official tap at `github.com/codefresh-io/homebrew-cli`
2. **Reviewing Formula Content**: All formulae are plain Ruby files in the `Formula/` directory
3. **Comparing Checksums**: For binary downloads, compare SHA256 with official releases
4. **Building from Source**: The `cf2` formula builds from source, allowing full transparency

### Additional Resources

- [Homebrew Security Documentation](https://docs.brew.sh/Homebrew-Security-and-Supply-Chain)
- [Homebrew Tap Trust Documentation](https://docs.brew.sh/Tap-Trust)
- [Codefresh CLI Repository](https://github.com/codefresh-io/cli)
- [Codefresh CLI V2 Repository](https://github.com/codefresh-io/cli-v2)

## Supported Versions

We maintain formulae for actively supported versions of Codefresh CLI tools. Security updates are applied as new releases become available.

| Formula | Status | Notes |
|---------|--------|-------|
| `codefresh` | Legacy/Maintenance | Version 1.x, maintained for backwards compatibility |
| `cf2` | Active | Version 2.x, actively developed and recommended |

## License

This tap is provided under the same license terms as the Codefresh CLI tools it distributes. See [LICENSE](LICENSE) for details.
