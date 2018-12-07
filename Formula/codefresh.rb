class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.108/codefresh-v0.8.108-macos-x64.tar.gz"
    version "v0.8.108"
    sha256 "d1873133033d1c4243e3c87d1a0ddea2cdc9020a95288cc36153a589d1a1c046"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end