class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.11.1/codefresh-v0.11.1-macos-x64.tar.gz"
    version "v0.11.1"
    sha256 "19e4530e6955814efd7a92575fa790b175b70bab093a7955b3b170214a1b4bc1"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end