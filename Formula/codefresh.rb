class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.32/codefresh-v0.8.32-macos-x64.tar.gz"
    version "v0.8.32"
    sha256 "47de7084a5caf228f2c6121627fe8f95d8ab8ab37c6bcdad91175b3c566f8f87"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end