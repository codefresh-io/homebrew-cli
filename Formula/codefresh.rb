class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.89.6/codefresh-v0.89.6-macos-x64.tar.gz"
    version "v0.89.6"
    sha256 "b9a48f7583aa695cd17166a90688b3ea670eddb3e01041a91e024fa9d78a3638"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end