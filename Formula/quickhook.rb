class Quickhook < Formula
  desc "Fast, Unix'y, opinionated Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v0.1.2.tar.gz"
  sha256 "d64f1ef03c89db21911a8ebeb23ab604c8bb96eea5657b4a4df5047c76004776"

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
