class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.41/codefresh-v0.8.41-macos-x64.tar.gz"
    version "v0.8.41"
    sha256 "493a2bf082d7474223992832b771d726dea21e46cb7c188b870c73dcf935831f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end