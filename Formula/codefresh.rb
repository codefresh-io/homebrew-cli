class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.45.0/codefresh-v0.45.0-macos-x64.tar.gz"
    version "v0.45.0"
    sha256 "19e8ce1fd54af5761ac78685acdc8359975d707c4f9c20f002739c7b9e103b5d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end