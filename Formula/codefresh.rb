class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.59.0/codefresh-v0.59.0-macos-x64.tar.gz"
    version "v0.59.0"
    sha256 "a37298609e2cdadddd4e90a843dea77d328355f88331a2799965b2be3c85bb97"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end