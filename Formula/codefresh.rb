class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.10.1/codefresh-v0.10.1-macos-x64.tar.gz"
    version "v0.10.1"
    sha256 "c6b5afc0af2b4fc8cb7aef2b94f5b75acf9eb93aed421bdba35c5b1dd81ad940"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end