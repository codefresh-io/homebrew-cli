# homebrew-cli

Homebrew Formula for [codefresh/cli](https://github.com/codefresh-io/cli) tool.

## Installation

```sh
brew tap codefresh-io/cli
brew install codefresh
```

For the V2 CLI:

```sh
brew tap codefresh-io/cli
brew install cf2
```

## Tap Trust and Security

This tap uses GPG signing to ensure the integrity and authenticity of formula updates. Starting with Homebrew 5.2.0/6.0.0, tap trust verification will become mandatory by default.

### Trusting the Tap

To trust this tap and all its formulae:

```sh
brew trust codefresh-io/cli
```

Or trust individual formulae:

```sh
brew trust --formula codefresh-io/cli/codefresh
brew trust --formula codefresh-io/cli/cf2
```

### Verifying Signatures

To verify that commits in this tap are properly signed:

```sh
cd $(brew --repository)/Library/Taps/codefresh-io/homebrew-cli
./verify-signatures.sh
```

For more information about tap signing and trust, see [SIGNING.md](SIGNING.md).

## Maintainers

For maintainers updating formulas, please ensure all commits are GPG-signed. See [SIGNING.md](SIGNING.md) for detailed instructions on setting up GPG signing.

## Available Formulae

- **codefresh** - Codefresh CLI V1 for interacting with Codefresh platform
- **cf2** - Codefresh CLI V2 with enhanced features

## Support

For issues related to the CLI tools themselves, please visit:
- [Codefresh CLI V1](https://github.com/codefresh-io/cli)
- [Codefresh CLI V2](https://github.com/codefresh-io/cli-v2)

For issues with this Homebrew tap, please open an issue in this repository.