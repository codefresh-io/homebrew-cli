class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.74.4/codefresh-v0.74.4-macos-x64.tar.gz"
    version "v0.74.4"
    sha256 "57ad1d9e58a59d4cf926f17ba47d9c9c490f41e81ee18d7097537de76c631723"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end