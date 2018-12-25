class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.14/codefresh-v0.9.14-macos-x64.tar.gz"
    version "v0.9.14"
    sha256 "e644146e32d5807ff293f3dd116e77d0346c157e4a56584550a7f7f9ea6557bf"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end