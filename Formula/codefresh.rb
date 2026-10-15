class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.12/codefresh-v1.2.12-macos-x64.tar.gz"
    version "v1.2.12"
    sha256 "534dc52aead70e5995a3f89724af259cc416c913299755bffd78d51eb08c4bbe"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end