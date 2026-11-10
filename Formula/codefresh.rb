class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.3.3/codefresh-v1.3.3-macos-x64.tar.gz"
    version "v1.3.3"
    sha256 "787412f37312ff06937dd7dff388c0d0c1ed8902b010111d5d1c6ff512ebe983"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end