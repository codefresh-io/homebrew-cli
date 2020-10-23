class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.11/codefresh-v0.73.11-macos-x64.tar.gz"
    version "v0.73.11"
    sha256 "21b2ae7c5fa4da2f580bc44bc7139acc27d2cddb752540900415880ebc4a64ba"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end