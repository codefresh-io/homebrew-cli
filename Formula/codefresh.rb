class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.78.2/codefresh-v0.78.2-macos-x64.tar.gz"
    version "v0.78.2"
    sha256 "f391b03be0d9b30ab59b4f079b37df3ac2edb6402900b95ae6b4137ecf7648a5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end