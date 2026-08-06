class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.5/codefresh-v1.2.5-macos-x64.tar.gz"
    version "v1.2.5"
    sha256 "fca984da9688f8f104f0ee242523abf844c4e4c6748395cffcbb175ebc586ff8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end