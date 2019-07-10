class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.27.3/codefresh-v0.27.3-macos-x64.tar.gz"
    version "v0.27.3"
    sha256 "713a0459971c937d3ac27b61b435d46497979d40c9763d9a0828895a5112bb06"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end