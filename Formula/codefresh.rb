class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.74.0/codefresh-v0.74.0-macos-x64.tar.gz"
    version "v0.74.0"
    sha256 "10a0a4db6049152450d748307bb89d6194737445a08869dfb8f0a21ae1504a86"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end