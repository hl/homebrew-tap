class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "5c6f2ff59a3b3af00254acf9a19b64c880ac331f5546b4af08b2dfd2f1abf583"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "e5bf00ea98fd63e9f18325a90ffaa9becaaac74a1cfd3ea751e154a0c5292d4d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "a6a02a204c920ff4e736ef6eb748bb707e5fecdb8d91c28a04b72e97546f2aec"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "a3eec5f150c19b5d166752d1152a1a532782ea5aba12792358b05c3292444487"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
