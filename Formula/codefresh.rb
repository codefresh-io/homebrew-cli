class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.2/codefresh-v0.70.2-macos-x64.tar.gz"
    version "v0.70.2"
    sha256 "d30e23d7c5694ed5ef02a6676d68626e11a8788e7b98b2dc023ad06a6c4ab164"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end