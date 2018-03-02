class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.29/codefresh-v0.8.29-macos-x64.tar.gz"
    version "v0.8.29"
    sha256 "ab9283fa4cf6b9179788735f6b0f8fadacce422523f1cbd7668abfd573c3e4c8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end