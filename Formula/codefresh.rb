class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.31/codefresh-v0.8.31-macos-x64.tar.gz"
    version "v0.8.31"
    sha256 "d5be27c0c03280d6a98c1824aec277069f7c8a57083df8835815eda70c5471d3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end