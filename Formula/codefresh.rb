class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.39.2/codefresh-v0.39.2-macos-x64.tar.gz"
    version "v0.39.2"
    sha256 "7c218d794d3d082cec387b240a4740ed7aa245b9c899895bba4545d039036e6b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end