class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.1/codefresh-v0.43.1-macos-x64.tar.gz"
    version "v0.43.1"
    sha256 "e9ecce84522d337bc62bfa062028309366f87d1b046381a6e6430e368ddafbb9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end