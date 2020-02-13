class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.0/codefresh-v0.43.0-macos-x64.tar.gz"
    version "v0.43.0"
    sha256 "2e84df17183271c068ac47229d2767cb1084ff7b40ef8ea974834998e00b8416"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end