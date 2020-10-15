class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.6/codefresh-v0.73.6-macos-x64.tar.gz"
    version "v0.73.6"
    sha256 "7de48fdc6d87eb5ab5e533b98fc256fe1af1ea1792fa51c7e35cf6000db7ff6c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end