class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.24.0/codefresh-v0.24.0-macos-x64.tar.gz"
    version "v0.24.0"
    sha256 "428673713a9b1c4884fb6024be6d05aeb3d8c485556263c241dc7cbbd6db29c3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end