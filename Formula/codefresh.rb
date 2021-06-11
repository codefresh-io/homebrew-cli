class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.26/codefresh-v0.75.26-macos-x64.tar.gz"
    version "v0.75.26"
    sha256 "e7fcd4026e5f3cd5c6103ff30b9459bf32b9c121de0bbf7cc594eeb7e32e1a9b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end