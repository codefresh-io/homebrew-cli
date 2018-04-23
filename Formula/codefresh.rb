class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.44/codefresh-v0.8.44-macos-x64.tar.gz"
    version "v0.8.44"
    sha256 "ac4ff0d70bb68f94e1fef9a14fe0e5c9aa0c4c78f08c2971288c2b21107a87a0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end