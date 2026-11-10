class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.3.2/codefresh-v1.3.2-macos-x64.tar.gz"
    version "v1.3.2"
    sha256 "4530e867932fb2a789e7f4403411107b14149087d1c59c9ab7f09497d3c2f5e1"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end