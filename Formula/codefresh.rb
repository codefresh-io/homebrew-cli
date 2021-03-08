class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.8/codefresh-v0.75.8-macos-x64.tar.gz"
    version "v0.75.8"
    sha256 "b4cb6bad76bd9dc6098d0bf370cfa3c86848ed5649b2baecf5e8390e77f2821f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end