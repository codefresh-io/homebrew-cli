class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.16/codefresh-v0.9.16-macos-x64.tar.gz"
    version "v0.9.16"
    sha256 "f3019abc2d34b63bc1a3afb6e9b1e5cd22f5e564e9f0e99be4e0fe3f438533c9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end