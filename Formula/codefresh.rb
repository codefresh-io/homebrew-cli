class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.16.4/codefresh-v0.16.4-macos-x64.tar.gz"
    version "v0.16.4"
    sha256 "54deda6ca7a2d502e355c4acd2856ede094cba1928276203d2f3150668fdc7ef"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end