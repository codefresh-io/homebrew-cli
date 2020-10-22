class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.10/codefresh-v0.73.10-macos-x64.tar.gz"
    version "v0.73.10"
    sha256 "1149a135aebd2933476c70d225f8b4ff3e9178a0ae07dcbcb2f7f73933ed3ecb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end