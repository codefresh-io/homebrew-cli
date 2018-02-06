class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.11/codefresh-v0.8.11-macos-x64.tar.gz"
    version "v0.8.11"
    sha256 "d15ecedf377610d66a967bd0307e0bb6a7a62eb9a507b636bb9c880a1a68187b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end