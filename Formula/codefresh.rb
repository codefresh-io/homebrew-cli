class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.17/codefresh-v0.68.17-macos-x64.tar.gz"
    version "v0.68.17"
    sha256 "77d751aa4b5908a439dbbcd697405f26858765fe617f0f849ee023ae440e3cb7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end