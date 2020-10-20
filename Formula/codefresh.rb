class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.8/codefresh-v0.73.8-macos-x64.tar.gz"
    version "v0.73.8"
    sha256 "e5146bd4cb98ba05254662aa24624851ff2e67886d58260a8531aecf2f7b5c69"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end