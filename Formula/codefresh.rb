class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.94/codefresh-v0.8.94-macos-x64.tar.gz"
    version "v0.8.94"
    sha256 "976297849dedcf1329a7a6d29c9048cbd18cf937efd9ee76b07c17f30b5ca6b3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end