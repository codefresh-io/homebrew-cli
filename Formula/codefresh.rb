class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.2/codefresh-v0.84.2-macos-x64.tar.gz"
    version "v0.84.2"
    sha256 "d105c6bec1e83181a5c8a18071628c0c7d420e3aeac45c1f2a762f47511542cf"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end