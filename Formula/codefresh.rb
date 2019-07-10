class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.26.0/codefresh-v0.26.0-macos-x64.tar.gz"
    version "v0.26.0"
    sha256 "2e16b9911aef4f37b26999fc1ecf45c0b6040b02fdf0d5e1fa54326dbecb603c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end