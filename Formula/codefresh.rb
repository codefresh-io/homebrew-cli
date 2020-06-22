class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.16/codefresh-v0.68.16-macos-x64.tar.gz"
    version "v0.68.16"
    sha256 "d4b712e5edf92f962dccd26a195f8aea363b52731584e6bee345762a56e41d6e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end