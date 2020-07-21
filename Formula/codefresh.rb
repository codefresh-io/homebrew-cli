class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.9/codefresh-v0.70.9-macos-x64.tar.gz"
    version "v0.70.9"
    sha256 "22135e63c060bf8a04e8c08b16c6e33b7615662e7d511f9f15900d18188820e9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end