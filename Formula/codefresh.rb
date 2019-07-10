class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.28.0/codefresh-v0.28.0-macos-x64.tar.gz"
    version "v0.28.0"
    sha256 "361443d83c8ec79ca117a0d51a45976dddffd74e4a60099c8a7d7b8a839664ef"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end