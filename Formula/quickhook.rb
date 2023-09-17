class Quickhook < Formula
  desc "Faster Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v1.6.1.tar.gz"
  sha256 "cda278c119e8f981b5c38ef776957a92f5d99042097aad4c839ab040772d9485"
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
