class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.1.4/codefresh-v1.1.4-macos-x64.tar.gz"
    version "v1.1.4"
    sha256 "8f96ed844fb9319afd062a7ef689effb460c3a3e1f4a70ddaf54b4a2b9dfc581"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end