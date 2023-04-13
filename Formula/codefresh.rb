class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.7/codefresh-v0.82.7-macos-x64.tar.gz"
    version "v0.82.7"
    sha256 "80aee4c9d04cba8cfc2ed39e4990fbc8f2718a0560aa29ce4f6f5513097615ad"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end