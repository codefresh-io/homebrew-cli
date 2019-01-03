class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.20/codefresh-v0.9.20-macos-x64.tar.gz"
    version "v0.9.20"
    sha256 "27a084169bdc89ae96159c33ab85fae36549d81bbf404f52ed5907a5fa8586bf"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end