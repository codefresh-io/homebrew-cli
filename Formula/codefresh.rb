class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.69/codefresh-v0.8.69-macos-x64.tar.gz"
    version "v0.8.69"
    sha256 "eaedfa907c8bdcce3a010d209d282745e54dffb93edf8a38551f56ef05f03497"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end