class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.27/codefresh-v0.73.27-macos-x64.tar.gz"
    version "v0.73.27"
    sha256 "98be8621b586f8364af3c2ef66253ef45ecddc31fa3039502d38c059eec55d93"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end