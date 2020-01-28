class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.42.1/codefresh-v0.42.1-macos-x64.tar.gz"
    version "v0.42.1"
    sha256 "48d965b2ee7faf2d1b0aa4a029ed162004a78225fce129b0d62bd55b3647b7b2"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end