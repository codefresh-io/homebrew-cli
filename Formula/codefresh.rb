class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.13.1/codefresh-v0.13.1-macos-x64.tar.gz"
    version "v0.13.1"
    sha256 "0e2c2e7e15c44992161dfccc7fef685175428a740a817a4a5108e2ad7fd61d70"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end