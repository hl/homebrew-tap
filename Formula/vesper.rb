class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "99c42e4a59739d62ad035536a36ffc0a63f41ae03a344894df55eca87df1b3b7"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "07567662e7168f9b30e6ea028bd8393c0b5a10a35d42deaaa15b09195d039748"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "33e8ca3db6d44c01542e799ea79bd951e3ede56b25ec8acf59b30b39aebbef80"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "907efd37687d711c35adf4e88a9a7e4afb52b14f21a17218119c4185279df244"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
