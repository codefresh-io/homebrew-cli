class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.18/codefresh-v0.8.18-macos-x64.tar.gz"
    version "v0.8.18"
    sha256 "1f3e3b77106a20e9f49fd78db70a708d8b49abab9d4b532a47852edaf18d56c8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end