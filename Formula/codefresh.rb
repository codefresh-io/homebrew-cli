class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.9/codefresh-v0.9.9-macos-x64.tar.gz"
    version "v0.9.9"
    sha256 "2f977410dd927e3f2ecc88358ad5f16c8e19a1843dd617909a7a69edc106806b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end