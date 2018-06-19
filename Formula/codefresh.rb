class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.56/codefresh-v0.8.56-macos-x64.tar.gz"
    version "v0.8.56"
    sha256 "20bdc3a4a37482891e0714a2f54f17a88ed402b502d6e94ef7550ae065e0d09f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end