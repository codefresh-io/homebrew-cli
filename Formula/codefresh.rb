class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.8/codefresh-v1.2.8-macos-x64.tar.gz"
    version "v1.2.8"
    sha256 "ad5aca30fe1f6cab39fc7810c202c5af040f47fee891289f0e63dcbd4f2da031"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end