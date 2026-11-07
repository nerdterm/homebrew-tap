class Nerd < Formula
  desc "Terminal multiplexer for AI agents"
  homepage "https://nerdterm.dev"
  url "https://github.com/nerdterm/nerd/releases/download/v0.19.1/nerd-v0.19.1-macos-arm64.tar.gz"
  sha256 "346b08b40f4e325d5fe05bbed59b735ee0fc7ae132f5a0b0146702d86d943d6d"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "nerd"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nerd --version")
  end
end
