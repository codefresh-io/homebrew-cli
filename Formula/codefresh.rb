class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.8/codefresh-v0.43.8-macos-x64.tar.gz"
    version "v0.43.8"
    sha256 "4e2938c6723fbfb72af3c562ffd040fdaef5919aad7af8b27275f416c1eaf1b5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end