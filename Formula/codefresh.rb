class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.26/codefresh-v0.73.26-macos-x64.tar.gz"
    version "v0.73.26"
    sha256 "e655869deab9ad09d6ddf7e06e08624587a54c0e1836a029d4507820a9c308dc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end