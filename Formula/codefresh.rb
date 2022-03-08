class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.78.5/codefresh-v0.78.5-macos-x64.tar.gz"
    version "v0.78.5"
    sha256 "056c707c6e7c8adfb12dc1669a3999e3ad0a5028eea9bdeac1ffdebc635e0516"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end