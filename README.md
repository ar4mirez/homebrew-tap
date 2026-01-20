# ar4mirez Homebrew Tap

A [Homebrew](https://brew.sh) tap for CLI tools and applications by [@ar4mirez](https://github.com/ar4mirez).

## Installation

```bash
brew tap ar4mirez/tap
```

## Available Formulae

| Formula | Description | Install |
|---------|-------------|---------|
| maia | AI-native distributed memory system with inference integration | `brew install maia` |

## Available Casks

| Cask | Description | Install |
|------|-------------|---------|
| aicof | CLI for the AICoF framework | `brew install --cask aicof` |

## Usage

### MAIA

MAIA (Memory AI Architecture) is an AI-native distributed memory system with inference integration.

```bash
# Install MAIA
brew install ar4mirez/tap/maia

# Start the server
maia serve

# Use the CLI
maiactl memories list --namespace default

# MCP server for IDE integrations
maia-mcp --server-url http://localhost:8080
```

**Included binaries:**
- `maia` - The MAIA server
- `maiactl` - CLI tool for managing MAIA
- `maia-mcp` - MCP server for IDE integrations (Claude Code, etc.)

### Casks

After tapping, install any cask:

```bash
brew install --cask <cask-name>
```

## Updating

```bash
brew update
brew upgrade maia
brew upgrade --cask <cask-name>
```

## Uninstalling

```bash
brew uninstall maia
brew uninstall --cask <cask-name>
brew untap ar4mirez/tap  # removes the tap entirely
```

## Contributing

Formulae and casks in this repository are automatically updated via [GoReleaser](https://goreleaser.com) when new releases are published.
