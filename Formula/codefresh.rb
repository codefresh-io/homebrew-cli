class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.37/codefresh-v0.8.37-macos-x64.tar.gz"
    version "v0.8.37"
    sha256 "3a1dcd33b7f4f9ddbb0b83dd3bd92eb35a1a3788cde0b856882ae4f4ea88f21e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end