class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.1/codefresh-v0.72.1-macos-x64.tar.gz"
    version "v0.72.1"
    sha256 "42e948debddebfc6e8f6cd2cfedad10048bbc57f510ba63869abd67c8a5e644a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end