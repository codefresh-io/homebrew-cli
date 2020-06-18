class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.11/codefresh-v0.68.11-macos-x64.tar.gz"
    version "v0.68.11"
    sha256 "9963ba961c32fff4837bdda22eb2465f2c5be67c9ab99a855a2271aa371fa124"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end