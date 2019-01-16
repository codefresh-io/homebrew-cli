class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.10.3/codefresh-v0.10.3-macos-x64.tar.gz"
    version "v0.10.3"
    sha256 "1d2b33db87e027e1a22d04cbfc2f4a9a6c5da76a7059c50a3cb6b11515d245e7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end