class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.10/codefresh-v0.43.10-macos-x64.tar.gz"
    version "v0.43.10"
    sha256 "ad7c7ee8de07435d7d27a608be7f70a84ed2da9545d9b4cb402f7f4ff217de1c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end