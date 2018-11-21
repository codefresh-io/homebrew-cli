class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.82/codefresh-v0.8.82-macos-x64.tar.gz"
    version "v0.8.82"
    sha256 "d5e77fd383d9afa691e4b5e65984890a0d8e7e9a25f21db9efc8305d69c4a77e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end