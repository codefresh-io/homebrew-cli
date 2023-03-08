class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.5/codefresh-v0.82.5-macos-x64.tar.gz"
    version "v0.82.5"
    sha256 "8be2d304ef8992a3ff731e0da3fc6e70c1f30ebe33ed37e02302e57fd0600ef8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end