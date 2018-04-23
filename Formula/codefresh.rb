class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.45/codefresh-v0.8.45-macos-x64.tar.gz"
    version "v0.8.45"
    sha256 "a8b2acbd5911e5fc57ba8c7372248f4f065974c365e1a4187ff7a2122f53541c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end