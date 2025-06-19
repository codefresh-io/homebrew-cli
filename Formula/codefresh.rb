class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.89.1/codefresh-v0.89.1-macos-x64.tar.gz"
    version "v0.89.1"
    sha256 "70912c0e4eb365817afab18f327943775adfafb578bdbba73742011b117f0dde"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end