class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.12.0/codefresh-v0.12.0-macos-x64.tar.gz"
    version "v0.12.0"
    sha256 "de3c70e8759149637240c0bb309109459bf3214a7f73a02382153a1a2e6ce013"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end