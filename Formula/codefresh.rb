class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.58.0/codefresh-v0.58.0-macos-x64.tar.gz"
    version "v0.58.0"
    sha256 "8d0085a6feca218037557f8d0ab8ae8c4f22a6eb5f8d5e603c04153fce9964ad"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end