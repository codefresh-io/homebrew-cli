class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.41.11/codefresh-v0.41.11-macos-x64.tar.gz"
    version "v0.41.11"
    sha256 "dac5f3a5f4e6e132913e4f6bc53a2361e439a270c6b159ea171d5a4a043e8f15"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end