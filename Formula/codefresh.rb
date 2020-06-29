class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.69.5/codefresh-v0.69.5-macos-x64.tar.gz"
    version "v0.69.5"
    sha256 "0b56b67c6636ce837981d004a9be944c00386b0560fb3d02517455c27724ccbb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end