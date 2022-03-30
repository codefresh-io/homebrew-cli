class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.79.0/codefresh-v0.79.0-macos-x64.tar.gz"
    version "v0.79.0"
    sha256 "797b038162cdd6456e2c25781964643b9e9216623413c567ff37cfb24b39c3de"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end