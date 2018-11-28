class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.91/codefresh-v0.8.91-macos-x64.tar.gz"
    version "v0.8.91"
    sha256 "a18e97124e4c48ffcd8dca6ffed14f8069170cb3ec6b8505ac83e0b222ecedd3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end