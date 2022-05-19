class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.79.1/codefresh-v0.79.1-macos-x64.tar.gz"
    version "v0.79.1"
    sha256 "73fabce68c5b51d605913e8c389cbf61dafa8721611b5767cc12d68ba6d6d567"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end