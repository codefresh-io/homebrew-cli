class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.15/codefresh-v0.75.15-macos-x64.tar.gz"
    version "v0.75.15"
    sha256 "24ae26d84b86d92c7da3b5d9a3fd8ff90b261de80c96a33cdd231599a91bc833"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end