class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.16/codefresh-v0.73.16-macos-x64.tar.gz"
    version "v0.73.16"
    sha256 "73ee19e4871932cda3713baa71acf93ada1a1bfacee47cea14640eea072a70a3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end