class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.4/codefresh-v0.81.4-macos-x64.tar.gz"
    version "v0.81.4"
    sha256 "c0391a3d7390d7a3b41ab1456945040018d62398fe7a74b10508817c8932832c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end