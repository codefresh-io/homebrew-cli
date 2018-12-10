class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.109/codefresh-v0.8.109-macos-x64.tar.gz"
    version "v0.8.109"
    sha256 "5548c8495096d4ffe48b2ccbc56d06f70a0bd6cd68647f53b7a1c71d0436be9d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end