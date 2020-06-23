class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.69.0/codefresh-v0.69.0-macos-x64.tar.gz"
    version "v0.69.0"
    sha256 "bda4a56acce2e12688ef9881bd71457301db084b1f660c13174941dde4bfdef3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end