class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.2/codefresh-v0.75.2-macos-x64.tar.gz"
    version "v0.75.2"
    sha256 "dfd496aa60f798c8d994c85a23c088c9a9cf0499e3071c702fc2145babe9e333"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end