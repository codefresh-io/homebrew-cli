class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.78.3/codefresh-v0.78.3-macos-x64.tar.gz"
    version "v0.78.3"
    sha256 "8183329f233d7b9ac9991d001e4ac593c7967e8430da880d7e74a4b58488efb3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end