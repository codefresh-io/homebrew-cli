class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.83.1/codefresh-v0.83.1-macos-x64.tar.gz"
    version "v0.83.1"
    sha256 "4126d95e5fcb5234bff8e862e490351d4b7b658330edf83b5349bfe2ccab1c91"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end