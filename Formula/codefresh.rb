class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.2/codefresh-v1.2.2-macos-x64.tar.gz"
    version "v1.2.2"
    sha256 "2e80e765cfa7bd7c44f87fe22a52f03c760d2d72be701ee87cc0d79b9ed8a5ca"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end