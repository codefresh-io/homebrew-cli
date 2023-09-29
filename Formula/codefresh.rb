class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.0/codefresh-v0.87.0-macos-x64.tar.gz"
    version "v0.87.0"
    sha256 "4b0d7f480249058541e429ac3040e21e5d143009f6f619052ab049308f84e759"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end