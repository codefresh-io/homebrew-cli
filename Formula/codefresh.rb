class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.28/codefresh-v0.75.28-macos-x64.tar.gz"
    version "v0.75.28"
    sha256 "aa70fee694c1d3bfba3d081dc58868f4e542f7c41b64728e41aa290f7d4f0d77"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end