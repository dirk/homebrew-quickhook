class Quickhook < Formula
  desc "Fast, Unix'y, opinionated Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v1.1.0.tar.gz"
  sha256 "dee081e8d5b01f68fc6144c5ad160788906750d6d2af820610e1d3652ce154da"

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
