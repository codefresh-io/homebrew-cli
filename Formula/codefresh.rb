class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.89.5/codefresh-v0.89.5-macos-x64.tar.gz"
    version "v0.89.5"
    sha256 "1fa1233dc21619020e948da4ad97278144a5a024702555cd381528689dd51634"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end