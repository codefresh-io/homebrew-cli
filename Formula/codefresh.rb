class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.71.6/codefresh-v0.71.6-macos-x64.tar.gz"
    version "v0.71.6"
    sha256 "632bd281e161871984b765927d23088f6d8c1c4009502c4a1282c820dac9be33"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end