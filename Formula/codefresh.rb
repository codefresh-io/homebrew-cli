class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.3/codefresh-v0.87.3-macos-x64.tar.gz"
    version "v0.87.3"
    sha256 "aef3c68b043da7d6d33d29d3f1868d5780e66c078ba9b6a3a7eb7b3ee4cf0be5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end