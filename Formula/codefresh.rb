class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.2/codefresh-v0.87.2-macos-x64.tar.gz"
    version "v0.87.2"
    sha256 "b63d6587cad180830fbd7d42e15ece2f7198c05c113995bd772319956afed335"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end