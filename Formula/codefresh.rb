class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.17.8/codefresh-v0.17.8-macos-x64.tar.gz"
    version "v0.17.8"
    sha256 "41c159d6db0be95b31ff8965767babedf58dbc9b3cddd4c69835217c2b024dbb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end