class Quickhook < Formula
  desc "Fast, Unix'y, opinionated Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v1.0.0.tar.gz"
  sha256 "c961e71b6bfa8730d3ff927b5940544a7054491ad59b90b68b95d8e93c0b09b8"

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
