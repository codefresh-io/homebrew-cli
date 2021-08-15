class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.76.0/codefresh-v0.76.0-macos-x64.tar.gz"
    version "v0.76.0"
    sha256 "f1b22a20795ac620d765e33de0e3ab54e3b810043eee1358ff4df506fa755f18"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end