class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.63/codefresh-v0.8.63-macos-x64.tar.gz"
    version "v0.8.63"
    sha256 "4e260d5f9f419a794115655ca2ed85901652d4d48954657fae541fd00c0264f4"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end