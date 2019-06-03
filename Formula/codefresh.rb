class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.20.3/codefresh-v0.20.3-macos-x64.tar.gz"
    version "v0.20.3"
    sha256 "beb633d8196290d28df819b8344470ae1e865b92779551082d198a5edc860723"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end