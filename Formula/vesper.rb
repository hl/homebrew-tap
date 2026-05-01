class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.10.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "eef1b4f95d9d6234b2d5c63a268af2089746ff4a8cf69ed012aebe7ddb781717"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "4139e0034fffe4771de591056e6f862121d081f68c38288577a4a7d27fcc1033"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "dc21128f572c5a1de3f241cce06699c6e19d14b2d68c398b84fda4e2c9fdd021"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "f9fe3d3607fba2d7f406c7db4bdbcb9540f5c3ada9f0fe99cbeecd81206509ed"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
