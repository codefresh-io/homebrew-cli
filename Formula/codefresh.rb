class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.31.0/codefresh-v0.31.0-macos-x64.tar.gz"
    version "v0.31.0"
    sha256 "990fa8495f80adf445d193a0b18e4b5172ea9665960a9048ff6de50986c1fa01"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end