class Nerd < Formula
  desc "Terminal multiplexer for AI agents"
  homepage "https://nerdterm.dev"
  url "https://github.com/nerdterm/nerd/releases/download/v0.20.0/nerd-v0.20.0-macos-arm64.tar.gz"
  sha256 "34e64b9af56328fadd7b24ae23994690adc36759a09a62fd743b7d648e7cd255"
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
