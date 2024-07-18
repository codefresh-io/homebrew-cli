class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.5/codefresh-v0.87.5-macos-x64.tar.gz"
    version "v0.87.5"
    sha256 "f19800332ce0ef4e8f1c2bfdefa5d3f1376eb7f013ea9b6aae662bcb300ec43f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end