class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.58/codefresh-v0.8.58-macos-x64.tar.gz"
    version "v0.8.58"
    sha256 "4c6ba237b8cd428839041a3bec99dfc7358c6dae692b890a706525e11181bcd0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end