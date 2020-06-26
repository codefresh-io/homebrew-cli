class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.69.3/codefresh-v0.69.3-macos-x64.tar.gz"
    version "v0.69.3"
    sha256 "bed9288e91159556c1a94cfebb39e28d9180fae53610cd502d4b655cc4c1b705"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end