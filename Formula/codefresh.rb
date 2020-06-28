class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.69.4/codefresh-v0.69.4-macos-x64.tar.gz"
    version "v0.69.4"
    sha256 "fa8556bb585e403b26a39ba04e8b76950d09705ae10453c1783650260cd01147"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end