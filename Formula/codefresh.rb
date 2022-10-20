class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.80.1/codefresh-v0.80.1-macos-x64.tar.gz"
    version "v0.80.1"
    sha256 "94fc9bff4e7ad31789d4becf5e658d04c1642f6a1f91f5ed1580ce5b0ee0f254"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end