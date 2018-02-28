class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.25/codefresh-v0.8.25-macos-x64.tar.gz"
    version "v0.8.25"
    sha256 "7960ab99eb51b9c8550949e693b298bb28f73bbed8f635f0a892a04cc912b848"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end