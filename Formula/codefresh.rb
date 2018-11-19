class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.81/codefresh-v0.8.81-macos-x64.tar.gz"
    version "v0.8.81"
    sha256 "0ea6cc07fb9349ade19b151dabfc84320eb8984ecd7561fa9d7f99c480e6a314"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end