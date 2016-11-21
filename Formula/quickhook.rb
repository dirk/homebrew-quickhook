class Quickhook < Formula
  desc "Fast, Unix'y, opinionated Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v1.3.0.tar.gz"
  sha256 "186ae654464b39ba2e75dbe361d820d255826a7d20e400ce74bdc1b31b5f8e2d"

  depends_on "glide" => :build
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GLIDE_HOME"] = (buildpath/".glide")

    dir = buildpath/"src/github.com/dirk/quickhook"
    dir.install Dir["*"]
    cd dir do
      system "glide", "install"
      system "go", "build", "-o", bin/"quickhook"
    end
  end

  test do
    assert_equal "quickhook version #{version}", shell_output("#{bin}/quickhook --version").chomp
  end
end
