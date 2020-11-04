class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.14/codefresh-v0.73.14-macos-x64.tar.gz"
    version "v0.73.14"
    sha256 "258924a6bd6183f8a971dea4e289535df0807c9125ba2c21ce4b16569d3ac9d8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end