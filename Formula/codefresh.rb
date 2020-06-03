class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.65.1/codefresh-v0.65.1-macos-x64.tar.gz"
    version "v0.65.1"
    sha256 "7f697dd10e368a9268c53a6b372087ec62321f7a94c067e0e136973eb8eb56bd"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end