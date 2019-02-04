class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.13.5/codefresh-v0.13.5-macos-x64.tar.gz"
    version "v0.13.5"
    sha256 "f9646f526dbf52d313156c5e9dfd7dce73cbc8051941c2f33ae8f36665369a91"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end