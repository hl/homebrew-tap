class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "0611333a6e2ddcc9fc7d88b480722ba1f6c66918c161b5d6ef8933de6c8d2b63"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "503052890d8ccf65e2590b24dccb113107114c05bd450fb48fdd0e17859ae06e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "ee7d85f488d7b665fc1a0ed91813b1f6ed0def3ca262e0755dbefcd8d92fde2b"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "269443b037528ad78a562a2e7ecf38c879e2c1161e9dc446838f4f8a39d70e0a"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
