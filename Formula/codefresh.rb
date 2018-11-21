class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.83/codefresh-v0.8.83-macos-x64.tar.gz"
    version "v0.8.83"
    sha256 "9f46d259917cf1a572e8a362079ffb53a180ebc9d3b73a464046f30d713be26a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end