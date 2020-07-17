class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.6/codefresh-v0.70.6-macos-x64.tar.gz"
    version "v0.70.6"
    sha256 "1b2d40fff81aeccd1860d7c3eb0d76b965cfca5bd25ca49495c1a5d3f062f969"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end