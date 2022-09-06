class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.80.0/codefresh-v0.80.0-macos-x64.tar.gz"
    version "v0.80.0"
    sha256 "b5479d4bb0dc5ffb2f5f099a151e49ada32cbca104e72160c9489ae72ef5231a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end