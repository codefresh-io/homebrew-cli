class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.23/codefresh-v0.9.23-macos-x64.tar.gz"
    version "v0.9.23"
    sha256 "681325bde63a53252959239754cf7a9181171a4350e208ebd0d7c7fa93860e08"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end