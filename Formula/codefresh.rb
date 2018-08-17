class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.73/codefresh-v0.8.73-macos-x64.tar.gz"
    version "v0.8.73"
    sha256 "5ef4b489008ebcd7a6dd33cea14d82b6afc8a081a1aca05b82ce053bbb501cce"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end