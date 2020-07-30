class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.71.7/codefresh-v0.71.7-macos-x64.tar.gz"
    version "v0.71.7"
    sha256 "4ead502b73b8c02179bce6c8fb82d9d08360467becc5706d23dc2b61e7be95ef"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end