class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.1/codefresh-v1.2.1-macos-x64.tar.gz"
    version "v1.2.1"
    sha256 "f28df764dcf6d2ef5d3e9cdbaec22112ef12a626ba40f234a7beb66884007103"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end