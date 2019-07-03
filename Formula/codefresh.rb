class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.25.0/codefresh-v0.25.0-macos-x64.tar.gz"
    version "v0.25.0"
    sha256 "e9adcba8b9599399226a0dff58ebd972d738ff126fd6f6f3505e8e4561671488"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end