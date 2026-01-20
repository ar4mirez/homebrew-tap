# typed: false
# frozen_string_literal: true

# MAIA - Memory AI Architecture
# AI-native distributed memory system with inference integration
class Maia < Formula
  desc "AI-native distributed memory system with inference integration"
  homepage "https://github.com/ar4mirez/maia"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/ar4mirez/maia/releases/download/v#{version}/maia-v#{version}-darwin-amd64.tar.gz"
      sha256 "944314a414dabef0cafc73b30ec5ddcac5b636642505dc2e0b6c8e6a853b814a"
    end
    on_arm do
      url "https://github.com/ar4mirez/maia/releases/download/v#{version}/maia-v#{version}-darwin-arm64.tar.gz"
      sha256 "7fd3843088ba1d72da7c41b0d673c5d7139186007deaa0041fa7011adb4a3914"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/ar4mirez/maia/releases/download/v#{version}/maia-v#{version}-linux-amd64.tar.gz"
      sha256 "7dc7b5a68dca72cdf3b5633635b1970acf6dd0d18b59a979759328b4f5574b74"
    end
    on_arm do
      url "https://github.com/ar4mirez/maia/releases/download/v#{version}/maia-v#{version}-linux-arm64.tar.gz"
      sha256 "60857701309e1bd6933f8e61e4b463045d2a382b5f98ef78b967d8bc645a22fd"
    end
  end

  def install
    bin.install "maia"
    bin.install "maiactl"
    bin.install "maia-mcp"
  end

  def caveats
    <<~EOS
      MAIA has been installed with the following binaries:
        - maia      : The MAIA server
        - maiactl   : CLI tool for managing MAIA
        - maia-mcp  : MCP server for IDE integrations

      To start the MAIA server:
        maia serve

      To start with a custom config:
        maia serve --config /path/to/config.yaml

      For MCP integration with Claude Code, add to your settings:
        {
          "mcpServers": {
            "maia": {
              "command": "maia-mcp",
              "args": ["--server-url", "http://localhost:8080"]
            }
          }
        }

      Documentation: https://ar4mirez.github.io/maia/
    EOS
  end

  test do
    assert_match "maia version", shell_output("#{bin}/maia --version")
    assert_match "maiactl", shell_output("#{bin}/maiactl --help")
    assert_match "maia-mcp", shell_output("#{bin}/maia-mcp --help 2>&1", 1)
  end
end
