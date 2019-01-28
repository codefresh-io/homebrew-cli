class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.13.0/codefresh-v0.13.0-macos-x64.tar.gz"
    version "v0.13.0"
    sha256 "d034989fad1576e922c5efb29de92cff4e20f20483ba434b323f59b54521a8de"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end