class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.20.0/codefresh-v0.20.0-macos-x64.tar.gz"
    version "v0.20.0"
    sha256 "df4253a4fcea46b04bed53a867817b7bd43d3397b0e1b19f0d20899b7adf7bb0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end