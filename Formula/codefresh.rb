class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.30/codefresh-v0.8.30-macos-x64.tar.gz"
    version "v0.8.30"
    sha256 "ce6108d5ffe07a2194a220d8ca1d9c2b3e3e5bec2c7d04213f5a553e315b31d9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end