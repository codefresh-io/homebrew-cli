class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.16.1/codefresh-v0.16.1-macos-x64.tar.gz"
    version "v0.16.1"
    sha256 "1d75cb36af39420be93851977546760a2f54b456acd402865b9dc2e6354e4767"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end