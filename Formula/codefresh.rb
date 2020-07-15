class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.4/codefresh-v0.70.4-macos-x64.tar.gz"
    version "v0.70.4"
    sha256 "218f0e7a8842500be81ea738fb5dac485dff9059e142d6e747937d86cc312166"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end