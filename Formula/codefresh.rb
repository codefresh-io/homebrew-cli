class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.20/codefresh-v0.75.20-macos-x64.tar.gz"
    version "v0.75.20"
    sha256 "3a193e54c99325357e4c72975fd9f29ac718779f254a0979835a85ddc1f53ae9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end