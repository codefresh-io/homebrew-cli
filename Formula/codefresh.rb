class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.78.1/codefresh-v0.78.1-macos-x64.tar.gz"
    version "v0.78.1"
    sha256 "1d460570c5f982f179e1052a7a649c633ce1bcbf83d1691c3b58bb09ed7f0cdf"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end