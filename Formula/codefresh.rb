class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.51.0/codefresh-v0.51.0-macos-x64.tar.gz"
    version "v0.51.0"
    sha256 "cd6979173f3be8de6371a41128dff96fb5ebdab3e4bac8536b22716756074f70"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end