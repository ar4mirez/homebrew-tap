# ar4mirez Homebrew Tap

A [Homebrew](https://brew.sh) tap for CLI tools and applications by [@ar4mirez](https://github.com/ar4mirez).

## Installation

```bash
brew tap ar4mirez/tap
```

## Available Casks

| Cask | Description | Install |
|------|-------------|---------|
| aicof | CLI for the AICoF framework | `brew install --cask aicof` |

*More tools coming soon...*

## Usage

After tapping, install any cask:

```bash
brew install --cask <cask-name>
```

## Updating

```bash
brew update
brew upgrade --cask <cask-name>
```

## Uninstalling

```bash
brew uninstall --cask <cask-name>
brew untap ar4mirez/tap  # removes the tap entirely
```

## Contributing

Casks in this repository are automatically updated via [GoReleaser](https://goreleaser.com) when new releases are published.
