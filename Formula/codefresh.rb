class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.2/codefresh-v0.82.2-macos-x64.tar.gz"
    version "v0.82.2"
    sha256 "fff6fbeb718c85811d1a850d16196f29f2c0fa91ab4ffbe65943ef293ee86b09"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end