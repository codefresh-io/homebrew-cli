class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.4/codefresh-v0.87.4-macos-x64.tar.gz"
    version "v0.87.4"
    sha256 "06b09ded6d6bf7edea2d06a240b77ff7a4ef14535f88e9701cb5fca21f5d96c7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end