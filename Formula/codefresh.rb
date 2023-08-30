class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.86.0/codefresh-v0.86.0-macos-x64.tar.gz"
    version "v0.86.0"
    sha256 "b8b06693f4f6a119e3e1328673434c4c35d13182e5494d081f02392946d4418a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end