class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.15.1/codefresh-v0.15.1-macos-x64.tar.gz"
    version "v0.15.1"
    sha256 "d3f7b1c726c4a2caed28d531796e5c729212096e82ceb71bb317afae974987d3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end