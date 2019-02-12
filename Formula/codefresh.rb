class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.15.0/codefresh-v0.15.0-macos-x64.tar.gz"
    version "v0.15.0"
    sha256 "a0ced279022e1db5e004fb9c991c94541ccc36380dfe72e9d08a7e477228a647"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end