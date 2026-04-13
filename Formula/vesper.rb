class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "1290a53707ed92b0808b599e51c64b15b7e45517353a1ff1549ed14906d8bb95"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "3e23fe3f54f9164614206a52495cc09602c1a7c837d0ff5117da4402e80da6fb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "a30dfc22ea1915540e82b4d9e462dae62c3d6a0785dae04862a86d1ca216dcf7"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "1b4eaab825fbba1b8b8ed8a3d65e9803830bc6afcc5580b1c50965b7c75a519f"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
