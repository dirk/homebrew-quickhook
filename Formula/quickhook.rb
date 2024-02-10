class Quickhook < Formula
  desc "Faster Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v1.6.2.tar.gz"
  sha256 "6999d01fbae8c9a7f285cfdf35e47663e95f88056e9009c42223b4d1dc4d92ab"
  license "BSD-3-Clause"
  head "https://github.com/dirk/quickhook.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_equal "v#{version.to_s}", shell_output("#{bin}/quickhook --version").strip
  end
end
