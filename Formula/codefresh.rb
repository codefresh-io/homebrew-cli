class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.89.3/codefresh-v0.89.3-macos-x64.tar.gz"
    version "v0.89.3"
    sha256 "bca9b917a644896b5e53dd57eba6446174d886e96edd665c21a5bf91a2d1afe7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end