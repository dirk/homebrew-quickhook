class Quickhook < Formula
  desc "Fast, Unix'y, opinionated Git hook runner"
  homepage "https://github.com/dirk/quickhook"
  url "https://github.com/dirk/quickhook/archive/v1.4.0.tar.gz"
  sha256 "1efa722ad02e868c6e53d771c581ba2978df7c3427291f65600717eed36bd079"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    ENV["GO111MODULE"] = "on"

    dir = buildpath/"src/github.com/dirk/quickhook"
    dir.install buildpath.children

    cd dir do
      system "go", "mod", "vendor"
      system "go", "build"
      bin.install "quickhook"
    end
  end

  test do
    assert_equal "quickhook version #{version}", shell_output("#{bin}/quickhook --version").chomp
  end
end
