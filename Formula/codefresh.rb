class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.39.5/codefresh-v0.39.5-macos-x64.tar.gz"
    version "v0.39.5"
    sha256 "dfffc9c43c87a5600b07b18e67eec026c61b6049690ecefd1b564445a7ff2478"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end