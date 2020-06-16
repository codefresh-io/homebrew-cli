class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.7/codefresh-v0.68.7-macos-x64.tar.gz"
    version "v0.68.7"
    sha256 "595133cf26ebb1372f589adfa9699976187fcd82bda77ffb029031fa425abb5b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end