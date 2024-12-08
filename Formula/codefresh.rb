class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.5/codefresh-v0.88.5-macos-x64.tar.gz"
    version "v0.88.5"
    sha256 "7d7726951dab8847be89e9146be76664fef39c722317b34f5cd7f1da5fc08cbb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end