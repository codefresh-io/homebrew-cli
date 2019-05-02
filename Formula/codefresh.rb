class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.19.1/codefresh-v0.19.1-macos-x64.tar.gz"
    version "v0.19.1"
    sha256 "56e53ca7ab7463dddac83570abd126e5cdaa8da3436f00cf257485790281aa8c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end