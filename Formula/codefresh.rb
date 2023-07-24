class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.8/codefresh-v0.84.8-macos-x64.tar.gz"
    version "v0.84.8"
    sha256 "cf420c121d46b4395d9e12b5bb9444270a884ebee560b76352ff0b66351697fe"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end