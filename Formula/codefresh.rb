class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.3/codefresh-v0.82.3-macos-x64.tar.gz"
    version "v0.82.3"
    sha256 "11a14a5017d9eb974fa9b9be09c674dc48004878514e22d191fcd0992878aacf"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end