class Nerd < Formula
  desc "Terminal multiplexer for AI agents"
  homepage "https://nerdterm.dev"
  url "https://github.com/nerdterm/nerd/releases/download/v0.17.1/nerd-v0.17.1-macos-arm64.tar.gz"
  sha256 "c89e51fc372e519d4bb47a4403ba59eb92b6cee6d97929addb56fa9f4df99fd6"
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
