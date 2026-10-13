class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.10/codefresh-v1.2.10-macos-x64.tar.gz"
    version "v1.2.10"
    sha256 "aa19546766b2d8a514f857dbc0d8add87dd1836adffc44c3cf2f379e3c5eefb6"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end