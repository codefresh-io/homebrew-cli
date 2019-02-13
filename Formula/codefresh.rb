class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.16.2/codefresh-v0.16.2-macos-x64.tar.gz"
    version "v0.16.2"
    sha256 "cbd89bfa97541594770dc9eb04d473f9b084c0ca2b762d11421f5ba40522a5e4"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end