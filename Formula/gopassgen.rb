class Gopassgen < Formula
  desc     "Generate secure passwords"
  homepage "https://github.com/Jmiwa/gopassgen"
  version  "0.1.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jmiwa/gopassgen/archive/refs/tags/v0.1.5.tar.gz"
      sha256 "1004f3ebf6a1d745e572240e639751ca27e4640c0ebcefda2d2c700b5049cd79"
    end
  end

  def install
    bin.install "gopassgen"
    zsh_completion.install "completions/zsh/_gopassgen"
  end

  test do
    assert_match "Generate secure passwords", shell_output("#{bin}/gopassgen --help")
  end
end
