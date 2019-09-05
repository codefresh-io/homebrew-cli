class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.32.1/codefresh-v0.32.1-macos-x64.tar.gz"
    version "v0.32.1"
    sha256 "e212a28675e73901ff99a0e1dd10f7431b43dfdcce0f1800de72bc0fecc28d78"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end