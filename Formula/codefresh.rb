class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.30/codefresh-v0.75.30-macos-x64.tar.gz"
    version "v0.75.30"
    sha256 "2c9acc506205024a8043cb9898a0f3964d804971287e7671816ee0198234d007"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end