class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.23/codefresh-v0.75.23-macos-x64.tar.gz"
    version "v0.75.23"
    sha256 "5b26ca0b62a28dc32ffdd237d53fff4ab5d3ca3c5a523c0fa0106402144cef6a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end