class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.3/codefresh-v0.68.3-macos-x64.tar.gz"
    version "v0.68.3"
    sha256 "ea46a8da999118dc85d906769f73ddf43d5c444d0b459f618a716d30436c0366"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end