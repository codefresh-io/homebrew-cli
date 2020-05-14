class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.60.1/codefresh-v0.60.1-macos-x64.tar.gz"
    version "v0.60.1"
    sha256 "4a2523244758b472eb29f1daca291c2d123d2a95b30ed9af55fe590472a33a45"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end