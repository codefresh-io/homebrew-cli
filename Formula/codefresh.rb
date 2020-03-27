class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.50.0/codefresh-v0.50.0-macos-x64.tar.gz"
    version "v0.50.0"
    sha256 "72c423f439679a50ced3b5fc22318a84554d88ea6b2544a7e7effa3e1c0acdef"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end