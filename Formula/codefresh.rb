class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.32/codefresh-v0.73.32-macos-x64.tar.gz"
    version "v0.73.32"
    sha256 "2621333f12bccf79a5fe0bed8ad7cbbba646bf096913dc0091a61c77083c0bb2"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end