class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.5/codefresh-v0.84.5-macos-x64.tar.gz"
    version "v0.84.5"
    sha256 "9bea2459ed37f5d57938d8ebee6efd28811f2de6d683c189a7f5c474efe8eb3d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end