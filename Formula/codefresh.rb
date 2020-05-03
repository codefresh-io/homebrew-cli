class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.52.4/codefresh-v0.52.4-macos-x64.tar.gz"
    version "v0.52.4"
    sha256 "bb04679a7d7b480a190486cda2558adcf48f679b144613d799705098a66e0b86"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end