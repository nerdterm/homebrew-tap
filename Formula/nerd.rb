class Nerd < Formula
  desc "Terminal multiplexer for AI agents"
  homepage "https://nerdterm.dev"
  url "https://github.com/nerdterm/nerd/releases/download/v0.13.0/nerd-v0.13.0-macos-arm64.tar.gz"
  sha256 "8984e26bbd3bf5a229f30c7ba16638c7246489cb2bb76de66413048cd212a7c1"
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
