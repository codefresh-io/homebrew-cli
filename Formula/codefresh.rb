class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.23.0/codefresh-v0.23.0-macos-x64.tar.gz"
    version "v0.23.0"
    sha256 "215e1341c32441d23f2e39bf3039c676bd35b834b0ba811d7e01fe3369814275"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end