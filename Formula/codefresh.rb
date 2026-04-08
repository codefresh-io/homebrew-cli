class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.1.3/codefresh-v1.1.3-macos-x64.tar.gz"
    version "v1.1.3"
    sha256 "79eaa1054c1c845ea40b3d82aad46da0f8cc3265b8c7168ae2cd4b203ad8a69d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end