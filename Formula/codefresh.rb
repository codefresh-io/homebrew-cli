class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.80.4/codefresh-v0.80.4-macos-x64.tar.gz"
    version "v0.80.4"
    sha256 "e793253b82fbec0999c2d6bee38c0b20d25ccfc58dd33f795473beedcd900d21"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end