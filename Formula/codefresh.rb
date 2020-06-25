class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.69.2/codefresh-v0.69.2-macos-x64.tar.gz"
    version "v0.69.2"
    sha256 "a91f42162ebe6eb907f5b8fb708fd992d377ef6749b60625ff20f405d678005b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end