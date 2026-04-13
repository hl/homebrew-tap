class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.7.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "68a4acd51e80cbe57ea8a916ef88c19ac71678b2bcb9f4c65f5be5b2b76aac0a"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "6f00f1a507e81da5612d903bfc4081810d5ee2427f863cd2e32dfa965681ea0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "df0da9face6d314350b8e6da4b9587dbdbcce77c64906c8a8b421bbf3b9afccd"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "172a317b049dbdee0691127a71de6015b0310ab2762ac91ad60cf7bc1f26159a"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
