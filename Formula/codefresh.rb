class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.31.1/codefresh-v0.31.1-macos-x64.tar.gz"
    version "v0.31.1"
    sha256 "c959f2e4a92fac2beaea0d736d3601438da220edaae8c10d88a0f55998d11124"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end