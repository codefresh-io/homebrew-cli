class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.0.3/codefresh-v1.0.3-macos-x64.tar.gz"
    version "v1.0.3"
    sha256 "ad88f354bfe4d21b842e42bec5a52ededa8e5656bd1d67d151283870989f5fdc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end