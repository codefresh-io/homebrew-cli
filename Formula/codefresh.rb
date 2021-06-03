class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.25/codefresh-v0.75.25-macos-x64.tar.gz"
    version "v0.75.25"
    sha256 "58a2d0fdcc5e5ecdf3734a523ebbb5ff5b934e7e6cca8bd26b4441004172ef59"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end