class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.4/codefresh-v0.88.4-macos-x64.tar.gz"
    version "v0.88.4"
    sha256 "a7b4cd9d34c57d8b1da7877e8e54e9f18c1b52714d44a43e5601eb61cadeb4fd"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end