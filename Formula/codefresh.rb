class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.40/codefresh-v0.8.40-macos-x64.tar.gz"
    version "v0.8.40"
    sha256 "1747d7cb6fb8a2480eb1382b2593b7e9d94b4182e96b60a38d46b4e8b1d5cd92"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end