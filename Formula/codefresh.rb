class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.6/codefresh-v0.88.6-macos-x64.tar.gz"
    version "v0.88.6"
    sha256 "c210d278049c27a117479fc6b5f6850481c9dff4b1fbbf171b3eb9cdf5e28e6e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end