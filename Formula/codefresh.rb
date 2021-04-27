class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.16/codefresh-v0.75.16-macos-x64.tar.gz"
    version "v0.75.16"
    sha256 "4858ac06b354ff790f7e994a3def40cfee8545f6dd600d0d9b4505738586a86c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end