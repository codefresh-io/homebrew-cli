class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.80/codefresh-v0.8.80-macos-x64.tar.gz"
    version "v0.8.80"
    sha256 "b2be6bd4926c7b629c407e1e0a591309a856a3dd7fcb7b7282f2b686c0786a36"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end