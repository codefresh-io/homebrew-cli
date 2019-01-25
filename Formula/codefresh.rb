class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.11.2/codefresh-v0.11.2-macos-x64.tar.gz"
    version "v0.11.2"
    sha256 "7b3b707dcfd19c1fe505d0c9c255ebaf064cc4d02295e9691cc41ae80f59c02b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end