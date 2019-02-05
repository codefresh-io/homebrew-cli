class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.14.0/codefresh-v0.14.0-macos-x64.tar.gz"
    version "v0.14.0"
    sha256 "ca2b7408a6201886d0d74817e6a2163da323ad46436d90bb94a59721c96c68b0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end