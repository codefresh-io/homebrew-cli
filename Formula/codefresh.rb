class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.9/codefresh-v0.8.9-macos-x64.tar.gz"
    version "v0.8.9"
    sha256 "1b0cd518f83f0f9ebccb883a6fa278021d2428ef2d325d9be08ada481dff778a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end