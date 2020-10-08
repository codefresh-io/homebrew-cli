class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.0/codefresh-v0.73.0-macos-x64.tar.gz"
    version "v0.73.0"
    sha256 "2510ad97d6209a34dc3d5d247faac4cbc79cc02790220dc5c6fae608710a648c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end