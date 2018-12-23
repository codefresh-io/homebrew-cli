class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.11/codefresh-v0.9.11-macos-x64.tar.gz"
    version "v0.9.11"
    sha256 "49f58f98545912103002ed8f366ae232fca986acaf6fabdf5b2e7c5ba10ce57f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end