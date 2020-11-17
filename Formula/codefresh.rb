class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.21/codefresh-v0.73.21-macos-x64.tar.gz"
    version "v0.73.21"
    sha256 "b71908be73c9420f941d7802e904b258a60d51d695978e5c16d173d9bad1e4b8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end