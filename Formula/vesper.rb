class Vesper < Formula
  desc "Permission-gated AI agent runtime"
  homepage "https://github.com/hl/vesper"
  version "0.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_arm64.tar.gz"
      sha256 "b5f1d7e0be832ef8a11ac52ea9fa594b68e3ed868b06612a7017b74d2d4b22c6"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_darwin_x64.tar.gz"
      sha256 "dd197f3690a1601cf592b6f01776568bdac0043bcc178efe327bd67033ab4abb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_arm64.tar.gz"
      sha256 "19914711d50cd3274dba7bf129e326d672a650c67ab2bd0aa67b24ab9a8cd122"
    end
    on_intel do
      url "https://github.com/hl/vesper/releases/download/v#{version}/vesper_linux_x64.tar.gz"
      sha256 "9b9d7f0b301dfcb5fb047731066c93e7857840c4009032f0fe09f9a1bf19d1ae"
    end
  end

  def install
    bin.install "vesper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/vesper --version")
  end
end
