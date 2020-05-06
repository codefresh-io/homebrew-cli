class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.55.0/codefresh-v0.55.0-macos-x64.tar.gz"
    version "v0.55.0"
    sha256 "db7687e259d65890604295ab33554d20ce601dcc77e4e6c6aaa8a4c6e65e0d6b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end