class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.17.14/codefresh-v0.17.14-macos-x64.tar.gz"
    version "v0.17.14"
    sha256 "6d5ab47a6587587f2f75096079e7acaed1fbc868db50776c74a6fdc77bffd980"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end