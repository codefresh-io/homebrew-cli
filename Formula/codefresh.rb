class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.7/codefresh-v0.84.7-macos-x64.tar.gz"
    version "v0.84.7"
    sha256 "840cbc6cb4bf1b4c7ab99e3222d97cd8525933978efcfb7ccfaf50e3e1c1fe9c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end