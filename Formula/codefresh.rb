class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.7/codefresh-v0.72.7-macos-x64.tar.gz"
    version "v0.72.7"
    sha256 "8a850fa44a1a17843aa4de7bbcc9ceb47c735f784566efad257b755a45712673"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end