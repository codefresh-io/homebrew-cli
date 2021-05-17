class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.19/codefresh-v0.75.19-macos-x64.tar.gz"
    version "v0.75.19"
    sha256 "a2fad0b49c1254ad433ccf715f67d2544487f57fec7ecba66b551851d2fd4c79"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end