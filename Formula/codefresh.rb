class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.34/codefresh-v0.73.34-macos-x64.tar.gz"
    version "v0.73.34"
    sha256 "0ed68964fe619b2c7dcedb634f67b9679b40a596ca198a10eab353fa232107a8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end