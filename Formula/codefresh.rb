class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.74.9/codefresh-v0.74.9-macos-x64.tar.gz"
    version "v0.74.9"
    sha256 "ddf67013406bd941fad3960db8d5faed13cd8622fbfeabcc32d1d8eb43db39b0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end