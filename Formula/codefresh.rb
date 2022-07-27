class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.79.2/codefresh-v0.79.2-macos-x64.tar.gz"
    version "v0.79.2"
    sha256 "c6c1b034d6176623cddc77535038de154865cff75764e036690c9e113ff4685d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end