class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.16.0/codefresh-v0.16.0-macos-x64.tar.gz"
    version "v0.16.0"
    sha256 "9ea817d380f96cbcc8614d7d3636cac78d18a9fb634b328f59edec503d7b1a5f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end