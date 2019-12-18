class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.37.5/codefresh-v0.37.5-macos-x64.tar.gz"
    version "v0.37.5"
    sha256 "679427e672b1397db7c2e17f5ff0d6055da34e1440cb20a054698c2aad1d581d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end