class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.67.0/codefresh-v0.67.0-macos-x64.tar.gz"
    version "v0.67.0"
    sha256 "47d17aaea544738a7a91763cb98e83ae8a67ec1c4176cfe9056018ef8b1e9007"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end