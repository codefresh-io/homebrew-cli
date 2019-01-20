class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.11.0/codefresh-v0.11.0-macos-x64.tar.gz"
    version "v0.11.0"
    sha256 "bc670e9795ef23b30c7a33713aaca6d0cc170811cd4f07448be199a4be284df3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end