class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.47/codefresh-v0.8.47-macos-x64.tar.gz"
    version "v0.8.47"
    sha256 "295914da9218bfeb71a84424c5ec5f90a86a22838f7a9ab2c7ea517eb8ae5cb0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end