class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.75/codefresh-v0.8.75-macos-x64.tar.gz"
    version "v0.8.75"
    sha256 "4216bd7945ce824f855107702f4c131cec0f9ae85a916f1f6df15b5b7d3e20ff"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end