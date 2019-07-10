class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.27.0/codefresh-v0.27.0-macos-x64.tar.gz"
    version "v0.27.0"
    sha256 "14d5f4876c1c83e6a299fdb0249a8cc5c9cd66ac71b1aa417537a35df6cd1d6a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end