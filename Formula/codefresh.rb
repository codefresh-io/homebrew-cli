class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.13/codefresh-v0.68.13-macos-x64.tar.gz"
    version "v0.68.13"
    sha256 "757d21e3916041dc6e4a641fa247f7b1ea387b9f4c3f10588896299e5981616e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end