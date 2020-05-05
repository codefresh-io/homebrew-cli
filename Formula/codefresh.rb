class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.53.0/codefresh-v0.53.0-macos-x64.tar.gz"
    version "v0.53.0"
    sha256 "c1da03509964d93afe8cc3df63ff03dbfeb0c1eab142794783a8357342ea12c9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end