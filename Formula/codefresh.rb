class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.46/codefresh-v0.8.46-macos-x64.tar.gz"
    version "v0.8.46"
    sha256 "6f9f293c072d3741982092000221f043593a3c37bcbdf20f1387ea5674aff779"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end