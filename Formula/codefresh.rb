class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.38/codefresh-v0.8.38-macos-x64.tar.gz"
    version "v0.8.38"
    sha256 "bf3eba349afe52d09868ddf4a28b8f7d810be02cd58c06e48b3c97d8db02e5e7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end