class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.6.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "586574ec24f649bf3984eefc5d3fb9fe90c8cefed17e3d44cb482d735159128e"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "2df07a4a481a17d104bbfdd58c7c7ba81baa215d0aab1b801b76688013b82d42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "490714523c253eb8f17b211a94c74cbd812343ffdc99c93d64c215b39d904c0f"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "962bf31f4b31bdc80741da6ea8cd43e0b78b71af4d381afbf2d240ef87e6dc62"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
