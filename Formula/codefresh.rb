class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.78.0/codefresh-v0.78.0-macos-x64.tar.gz"
    version "v0.78.0"
    sha256 "198dc3a4032d15cee1487d5ca130e22975583010c48e4796ebda9f2a3082618a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end