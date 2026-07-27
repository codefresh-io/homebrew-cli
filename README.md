# homebrew-cli

Homebrew Formula for [codefresh/cli](https://github.com/codefresh-io/cli) tool.

## Installation

### Homebrew 6.0.0+ / 5.2.0+

Starting with Homebrew 6.0.0 (or 5.2.0), third-party taps require explicit trust. Install with:

```sh
brew tap codefresh-io/cli
brew trust codefresh-io/cli
brew install codefresh
```

Or trust and install a specific formula:

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

### Earlier Homebrew Versions

For Homebrew versions before 6.0.0/5.2.0:

```sh
brew tap codefresh-io/cli
brew install codefresh
```

## Available Formulae

- **codefresh**: Codefresh CLI v1 - Full interface to interact with Codefresh
- **cf2**: Codefresh CLI v2 - Next generation CLI tool

## More Information

For more details about Homebrew tap trust, see the [official documentation](https://docs.brew.sh/Tap-Trust).