class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.16/codefresh-v0.8.16-macos-x64.tar.gz"
    version "v0.8.16"
    sha256 "a217c2cb5bb618e0926ac77dfb149a8fe1de00f494ece515abc829cf34741b01"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end