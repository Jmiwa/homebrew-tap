class Gopassgen < Formula
  desc     "Generate secure passwords"
  homepage "https://github.com/Jmiwa/gopassgen"
  version  "1.0.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Jmiwa/gopassgen/releases/download/v1.0.2/gopassgen-1.0.2-darwin-arm64.tar.gz"
      sha256 "8b1c7a02e8ab2440ef8403e27d07bf8d2a64c8431000aca60cd5cf9bc72a6de0"
    end
    # Intel Mac や Linux を後で追加するなら、ここに url/sha256 ブロックを増やす
  end

  def install
    bin.install "gopassgen"
    zsh_completion.install "completions/zsh/_gopassgen"
  end

  test do
    assert_match "Generate secure passwords", shell_output("#{bin}/gopassgen --help")
  end
end
