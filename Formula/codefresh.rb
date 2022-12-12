class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.2/codefresh-v0.81.2-macos-x64.tar.gz"
    version "v0.81.2"
    sha256 "65f56c431a0740b508011565dba0831921b634e6e46af9e166d496d8fda333e9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end