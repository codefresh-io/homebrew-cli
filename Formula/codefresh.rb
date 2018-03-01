class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.26/codefresh-v0.8.26-macos-x64.tar.gz"
    version "v0.8.26"
    sha256 "7865797c3d9366daf15d48c38dba30da058beb0bf249392abab98bcf620b8467"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end