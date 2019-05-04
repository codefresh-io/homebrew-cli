class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.19.5/codefresh-v0.19.5-macos-x64.tar.gz"
    version "v0.19.5"
    sha256 "1a6082566ebf3f2687015dd18c4d66eaf735d3d046b735b8913d779a2e677bdc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end