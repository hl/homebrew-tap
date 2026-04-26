class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.9.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "c93fa41cae7590c6bafe43f5cb7555de1612f4679b02430a9f2884ca0b7481cb"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "bd0b0c7d96c8c00be47fd3fef8017fa0f9daba6aed70a706e3b48b5cff312488"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "b671e29853472ac3286c08fed7d9e109f30ebda4a0f057f67f81c4a8b9613f6c"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "f555d84e58042721d468efd74ddbd5f0e66dd9e2402364fdc4fea3ed24b50d73"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
