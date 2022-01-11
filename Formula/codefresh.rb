class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.78.4/codefresh-v0.78.4-macos-x64.tar.gz"
    version "v0.78.4"
    sha256 "b232e184597bc3a9b9475f7a6e527fdc87c4f21fd4f02b61785cd096a3f6fdbd"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end