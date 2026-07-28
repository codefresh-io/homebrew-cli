# homebrew-cli

[![Tap Validation](https://github.com/codefresh-io/homebrew-cli/actions/workflows/tap-validation.yml/badge.svg)](https://github.com/codefresh-io/homebrew-cli/actions/workflows/tap-validation.yml)

Homebrew Formula for Codefresh CLI tools:
- [codefresh/cli](https://github.com/codefresh-io/cli) - Codefresh CLI V1 (legacy)
- [codefresh/cli-v2](https://github.com/codefresh-io/cli-v2) - Codefresh CLI V2

## Installation

### Trusting the Tap (Required for Homebrew 6.0.0+)

Starting with Homebrew 6.0.0, third-party taps require explicit trust before use. This is a security feature to protect users from potentially malicious code.

**Option 1: Trust the entire tap (recommended for regular users)**
```sh
brew tap codefresh-io/cli
brew trust codefresh-io/cli
brew install codefresh  # or: brew install cf2
```

**Option 2: Trust specific formulae only**
```sh
brew tap codefresh-io/cli
brew trust --formula codefresh-io/cli/codefresh
brew install codefresh

# Or for cf2:
brew trust --formula codefresh-io/cli/cf2
brew install cf2
```

**Option 3: Install without pre-tapping (implicit trust)**
```sh
brew install codefresh-io/cli/codefresh
```

### Legacy Installation (Homebrew < 6.0.0)

```sh
brew tap codefresh-io/cli
brew install codefresh  # or: brew install cf2
```

## Available Formulae

### Codefresh CLI V1 (`codefresh`)
```sh
brew install codefresh-io/cli/codefresh
```

The original Codefresh CLI providing full interface to interact with Codefresh.

### Codefresh CLI V2 (`cf2`)
```sh
brew install codefresh-io/cli/cf2
```

The next-generation Codefresh CLI tool.

## Why Trust is Required

Homebrew formulae can execute arbitrary code during installation. By requiring explicit trust, Homebrew ensures you're aware of which third-party sources you're allowing to run code on your system.

This tap is maintained by Codefresh and contains only formulae for official Codefresh CLI tools. For more information about our security practices, see [SECURITY.md](SECURITY.md).

## More Information

- [Homebrew Tap Trust Documentation](https://docs.brew.sh/Tap-Trust)
- [Codefresh CLI Documentation](https://codefresh.io/docs/docs/cli/getting-started/)
- [Report Security Issues](https://github.com/codefresh-io/homebrew-cli/security/advisories)