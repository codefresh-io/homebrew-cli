class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.10/codefresh-v0.8.10-macos-x64.tar.gz"
    version "v0.8.10"
    sha256 "a89c52902d719791ffc2eb7455f279720f9bec43205af0278fea2c3347c7a054"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end