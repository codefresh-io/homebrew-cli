class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.69.6/codefresh-v0.69.6-macos-x64.tar.gz"
    version "v0.69.6"
    sha256 "9451e01a93e84b9ed7d43f9640cb2a33ac48987c837d107247e3435e233b261e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end