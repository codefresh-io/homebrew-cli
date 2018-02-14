class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.22/codefresh-v0.8.22-macos-x64.tar.gz"
    version "v0.8.22"
    sha256 "ea081d7ddaf86e27a62d7c5135e56de15199c5835fe5e2e348247a2d6ba5cec7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end