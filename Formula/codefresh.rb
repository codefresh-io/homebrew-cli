class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.23/codefresh-v0.8.23-macos-x64.tar.gz"
    version "v0.8.23"
    sha256 "899a69c65e8526ebb7ed7de96462533462b706970ed5de82b5fa3b2b62971217"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end