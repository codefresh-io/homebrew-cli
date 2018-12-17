class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.6/codefresh-v0.9.6-macos-x64.tar.gz"
    version "v0.9.6"
    sha256 "4533c154e23223b4b3e9594ee0a3b7afec903e0c7573fa849273adcc769ff601"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end