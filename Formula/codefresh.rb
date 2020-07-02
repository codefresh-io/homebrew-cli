class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.1/codefresh-v0.70.1-macos-x64.tar.gz"
    version "v0.70.1"
    sha256 "1e5b55c241b0d22c29f52794a845a0fbf9178260d8c87c13602706665f551a6f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end