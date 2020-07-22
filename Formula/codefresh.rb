class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.71.3/codefresh-v0.71.3-macos-x64.tar.gz"
    version "v0.71.3"
    sha256 "ae75b249193844ddb51d4ce5d5a673060a05413f3be1aaca6bf92829a51f1db3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end