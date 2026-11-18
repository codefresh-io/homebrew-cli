class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.3.6/codefresh-v1.3.6-macos-x64.tar.gz"
    version "v1.3.6"
    sha256 "ad07795a3a441d7d23380d3243587d904a4a46efab0ca16d1d051de009977ffe"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end