class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.1/codefresh-v0.75.1-macos-x64.tar.gz"
    version "v0.75.1"
    sha256 "92232f5a6398ab86b1e6d0d40e28e1583a0e045ccbe7365908a211edaadd322b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end