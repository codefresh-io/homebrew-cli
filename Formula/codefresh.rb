class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.78/codefresh-v0.8.78-macos-x64.tar.gz"
    version "v0.8.78"
    sha256 "48165ee789d9a0882712ff67af95949fe3dc08c057438f756f5fa8189c836027"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end