class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.35/codefresh-v0.75.35-macos-x64.tar.gz"
    version "v0.75.35"
    sha256 "d1781c6f6f33e98d6b1fec5e3ef1da672cd7b89238b53c4459a0a02bc44ae67e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end