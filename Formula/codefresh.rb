class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.44.0/codefresh-v0.44.0-macos-x64.tar.gz"
    version "v0.44.0"
    sha256 "2dc094cd888940014875dd810e30c28816c75a8a1fb59dd89f6be46df5376f79"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end