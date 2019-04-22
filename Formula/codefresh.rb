class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.18.1/codefresh-v0.18.1-macos-x64.tar.gz"
    version "v0.18.1"
    sha256 "bc987472ba3bbcb13f1295ccb15b63ebd7f767e16ab0f10db32e9bbc5eb988ca"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end