class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.20/codefresh-v0.8.20-macos-x64.tar.gz"
    version "v0.8.20"
    sha256 "71c1afdf2762b0555d5cde95acf9581a3f11a9f5ee6dbf8f823f55e97ef377ca"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end