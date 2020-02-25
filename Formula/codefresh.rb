class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.5/codefresh-v0.43.5-macos-x64.tar.gz"
    version "v0.43.5"
    sha256 "034c9b4febc68ef3926f6bf9e20e9fe9279882759ed0f941d8571a57664e0564"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end