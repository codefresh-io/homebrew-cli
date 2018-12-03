class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.102/codefresh-v0.8.102-macos-x64.tar.gz"
    version "v0.8.102"
    sha256 "809c5341df43961a678f794f8ceb22501650afbece42676305ffbffa0f2bea8f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end