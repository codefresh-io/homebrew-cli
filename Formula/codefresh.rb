class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.41.0/codefresh-v0.41.0-macos-x64.tar.gz"
    version "v0.41.0"
    sha256 "4c2490e6691d1969ed64f73719ba98c8c007e1fca644cdb9fb6878afe646e21d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end