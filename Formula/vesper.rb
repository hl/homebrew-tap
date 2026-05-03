class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.10.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "852810d028629f26f5668115ecd49aa0158aba8f3245ae67579b7baa48f9f6dd"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "ea570e4c02d9d76af2db86bf23aca7e969af363b692bae5627fd3dc369e30919"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "6fb060e1384e1c39d5809bbdfbb75d1d5342adf808c0b2ab0a9612d4fdde4f46"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "8046f5af59367996f3fa99b9b896b0af4f646d4416c5e4abd4894f74ef397873"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
