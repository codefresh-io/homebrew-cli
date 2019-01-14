class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.10.0/codefresh-v0.10.0-macos-x64.tar.gz"
    version "v0.10.0"
    sha256 "445e671fd418856f8b7d40bd92ab57c783acbb0ab50f89f545cd6733bd0ff6b8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end