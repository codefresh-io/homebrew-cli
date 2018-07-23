class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.67/codefresh-v0.8.67-macos-x64.tar.gz"
    version "v0.8.67"
    sha256 "6ceff9ec39a082437ba038ba81db6d677d2810310c00d83ce03713e43ef821ed"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end