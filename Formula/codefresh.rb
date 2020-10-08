class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.9/codefresh-v0.72.9-macos-x64.tar.gz"
    version "v0.72.9"
    sha256 "883e1bce3039e6819b76c806b8a4345ee232dfce70a853e71cc22443062eeaab"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end