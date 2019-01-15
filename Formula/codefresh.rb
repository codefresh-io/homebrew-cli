class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.10.2/codefresh-v0.10.2-macos-x64.tar.gz"
    version "v0.10.2"
    sha256 "512ff131dfa2462bdad000004e475e8982421074b72368ad929fa1d82e805853"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end