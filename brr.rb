class Brr < Formula
  desc "brr — autonomous AI coding loops for Claude Code"
  homepage "https://github.com/hl/brr"
  license "MIT"

  depends_on "go" => :build

  url "https://github.com/hl/brr.git",
    branch: "main"

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/brr"
  end

  test do
    assert_match "brr", shell_output("#{bin}/brr --help 2>&1", 0)
  end
end
