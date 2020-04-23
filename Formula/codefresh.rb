class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.52.0/codefresh-v0.52.0-macos-x64.tar.gz"
    version "v0.52.0"
    sha256 "6e9187dc155ac8d7e713b77f350becae6106fe433c0e15eb19273be8bb33288a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end