class Nerd < Formula
  desc "Terminal multiplexer for AI agents"
  homepage "https://nerdterm.dev"
  url "https://github.com/nerdterm/nerd/releases/download/v0.14.0/nerd-v0.14.0-macos-arm64.tar.gz"
  sha256 "395146b7839dd88e475fbf0c321b06137c98f45e98c18bbdfbeffe0a674c5ad1"
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
