class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.0.5/codefresh-v1.0.5-macos-x64.tar.gz"
    version "v1.0.5"
    sha256 "e57676dbfd30041ddff9cf9123e6205ce5b085a11ce6da76cfd0f88f2119c2f2"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end