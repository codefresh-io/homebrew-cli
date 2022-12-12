class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.1/codefresh-v0.81.1-macos-x64.tar.gz"
    version "v0.81.1"
    sha256 "c5b8fdb0f7ea6c6b7c5993e575cfcf2abf1b835befdab6aca7d3184053ffe565"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end