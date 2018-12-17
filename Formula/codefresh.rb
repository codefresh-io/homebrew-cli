class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.5/codefresh-v0.9.5-macos-x64.tar.gz"
    version "v0.9.5"
    sha256 "94420acd1001120772bdc9dc1d6f86f6c9483dbd8511575b3ae046b08e904cfd"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end