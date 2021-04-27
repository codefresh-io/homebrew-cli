class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.14/codefresh-v0.75.14-macos-x64.tar.gz"
    version "v0.75.14"
    sha256 "39c939356a0686b56cfc3c4a6809d184fa43f2858678df408d89605bb898ae6a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end