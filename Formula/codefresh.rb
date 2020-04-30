class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.52.3/codefresh-v0.52.3-macos-x64.tar.gz"
    version "v0.52.3"
    sha256 "4c5a8ed18af3bc7d334bf72b6f51de7d57fe6f5d0eb5b3d60873f0741055345d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end