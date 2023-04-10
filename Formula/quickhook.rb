class Quickhook < Formula
  desc "Faster Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v1.5.0.tar.gz"
  sha256 "b32ab57c2bd65b64546bc66b2213b101b13e4063321283901b999dbf820e37a4"
  license "BSD-3-Clause"
  head "https://github.com/dirk/quickhook.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_equal version.to_s, shell_output("#{bin}/quickhook --version").strip
  end
end
