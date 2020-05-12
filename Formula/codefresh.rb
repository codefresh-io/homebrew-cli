class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.59.1/codefresh-v0.59.1-macos-x64.tar.gz"
    version "v0.59.1"
    sha256 "0f84e453105a1874c981ed2f8ff5eac6c86f9d4deae0abc7bbc76b7473359e13"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end