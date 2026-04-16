class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.8.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "bfb836793f7862feaa4e08c183494c84fd8b91eec0dafaf5a7f33dbdfbd371c0"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "6a2ee596ef1b331bc712f7ce18cbc23c78d6c41dd33a0bbcabb49a92c8a95f21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "a4d21ef3de2037f81d9866357889e0998163b04ff5cc514ad283fba9f4b35e70"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "7c996a18ccde58f3a6626575b7ce03d2803a9f7f3ab648cdc382e0c3b2bbc8aa"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
