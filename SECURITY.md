# Security Policy

## Homebrew Tap Trust

Starting with Homebrew 6.0.0 (or 5.2.0), third-party taps like `codefresh-io/cli` require explicit trust before formulae can be installed. This is a security feature implemented by Homebrew to prevent automatic execution of code from untrusted sources.

### Why Trust Is Required

Homebrew formulae are executable package definitions written in Ruby. When Homebrew evaluates a formula (to resolve dependencies, discover packages, or run installation scripts), it executes Ruby code with your user's privileges. By requiring explicit trust, Homebrew helps protect against:

- Compromised tap repositories
- Unexpected repository ownership changes
- Package name collisions
- Unintended command execution

### How to Trust This Tap

#### Option 1: Trust the Entire Tap (Recommended for Regular Users)

Trust all current and future formulae from this tap:

```sh
brew tap codefresh-io/cli
brew trust codefresh-io/cli
brew install codefresh  # or cf2
```

#### Option 2: Trust Specific Formulae (Recommended for Automation/CI)

Trust only the specific formula you need:

```sh
brew tap codefresh-io/cli
brew trust --formula codefresh-io/cli/codefresh
brew install codefresh
```

For cf2:

```sh
brew tap codefresh-io/cli
brew trust --formula codefresh-io/cli/cf2
brew install cf2
```

### Verifying Trust Status

Check which taps and formulae you have trusted:

```sh
brew trust
```

Check for untrusted taps:

```sh
brew untrust
```

### Revoking Trust

If you no longer wish to trust this tap:

```sh
brew untrust codefresh-io/cli
```

Or for a specific formula:

```sh
brew untrust --formula codefresh-io/cli/codefresh
```

## Reporting Security Issues

If you discover a security vulnerability in this tap or the Codefresh CLI tools, please report it to the Codefresh security team:

- Email: security@codefresh.io
- GitHub Security Advisories: [codefresh-io/homebrew-cli](https://github.com/codefresh-io/homebrew-cli/security/advisories)

Please do not report security vulnerabilities through public GitHub issues.

## Best Practices

1. **Review Before Trusting**: Before trusting this tap, review the [repository](https://github.com/codefresh-io/homebrew-cli) to understand what code will be executed.

2. **Keep Updated**: Regularly update your installed formulae to get the latest security patches:
   ```sh
   brew update && brew upgrade
   ```

3. **Monitor Changes**: If you trust the entire tap, be aware that future formulae added to this tap will also be trusted automatically.

4. **Use Official Sources**: Always install from the official `codefresh-io/cli` tap. Avoid similarly-named taps that might be malicious.

## Additional Resources

- [Homebrew Tap Trust Documentation](https://docs.brew.sh/Tap-Trust)
- [Homebrew Security and Supply Chain](https://docs.brew.sh/Homebrew-Security-and-Supply-Chain)
- [Codefresh CLI Documentation](https://codefresh.io/docs/docs/integrations/codefresh-api/#codefresh-cli)
