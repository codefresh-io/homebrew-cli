class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.49/codefresh-v0.8.49-macos-x64.tar.gz"
    version "v0.8.49"
    sha256 "793cf21a68d657e97c00ea6035d6b88e5a76b59236951842a3ec03729d2c7c22"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end