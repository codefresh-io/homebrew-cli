class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.74.1/codefresh-v0.74.1-macos-x64.tar.gz"
    version "v0.74.1"
    sha256 "b1b525c7edbe4febef96659b3c6ce6e92e6eb804749b071319fc1f91012d7d21"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end