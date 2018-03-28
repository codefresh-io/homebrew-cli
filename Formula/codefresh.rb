class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.42/codefresh-v0.8.42-macos-x64.tar.gz"
    version "v0.8.42"
    sha256 "1a78874f4a7912f7ba43038df11b6b03dcf148c2e9592ce27a38708c36cce42a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end