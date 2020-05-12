class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.56.0/codefresh-v0.56.0-macos-x64.tar.gz"
    version "v0.56.0"
    sha256 "48d396471a5b5b5f7ead95d7aadf4480b3a9bff874e8355ace91e18413ba8545"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end