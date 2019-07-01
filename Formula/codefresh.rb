class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.24.1/codefresh-v0.24.1-macos-x64.tar.gz"
    version "v0.24.1"
    sha256 "4b978362a26f4186de3763a27ae5942345c473d49f30a63af90aadc43c315912"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end