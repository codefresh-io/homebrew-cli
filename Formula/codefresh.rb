class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.10/codefresh-v0.84.10-macos-x64.tar.gz"
    version "v0.84.10"
    sha256 "d4091d311f90332410364e27519879d6d89d7de96d8d0cb78fd0d0f0f61ee588"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end