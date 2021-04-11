class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.9/codefresh-v0.75.9-macos-x64.tar.gz"
    version "v0.75.9"
    sha256 "3af6432085a588a0a7a41c1c53ed9a29f4e13e9fcfb516a86745fcf5497e0e44"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end