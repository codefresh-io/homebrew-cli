class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.14/codefresh-v0.43.14-macos-x64.tar.gz"
    version "v0.43.14"
    sha256 "bbe7939b7b0fe79d398675b61c13d9fccdcba2177b5422bf11f6c2ad00715b9b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end