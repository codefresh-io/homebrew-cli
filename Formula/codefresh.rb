class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.15/codefresh-v0.73.15-macos-x64.tar.gz"
    version "v0.73.15"
    sha256 "fccfa3ee6b6b7c94752d514e59564b0924d4bdcff6ba8cad761d383baa49c122"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end