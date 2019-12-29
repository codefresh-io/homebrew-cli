class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.40.0/codefresh-v0.40.0-macos-x64.tar.gz"
    version "v0.40.0"
    sha256 "0a47e04ed128f8f4256521cb937c0d579afc22b82a303294209fa06c1c803685"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end