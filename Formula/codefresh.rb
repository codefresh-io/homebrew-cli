class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.21/codefresh-v0.8.21-macos-x64.tar.gz"
    version "v0.8.21"
    sha256 "18dc739e3e92e4bb9577fb1139e9f340878b8aef81f8792951a7188df15eaf86"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end