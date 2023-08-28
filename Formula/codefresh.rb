class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.85.0/codefresh-v0.85.0-macos-x64.tar.gz"
    version "v0.85.0"
    sha256 "5a8ac446116d9a2ef12952405a92e7367af21c9c214cabe2c2c39f6e8e63b2e6"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end