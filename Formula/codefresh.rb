class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.12/codefresh-v0.43.12-macos-x64.tar.gz"
    version "v0.43.12"
    sha256 "2eeffbea84475547748d0a3682d020fc13fdbea3eaeaa44084f6a1cfd08f27dc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end