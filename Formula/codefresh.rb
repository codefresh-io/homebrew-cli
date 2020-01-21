class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.41.13/codefresh-v0.41.13-macos-x64.tar.gz"
    version "v0.41.13"
    sha256 "c4744292b74bb29f67783b65d45a90877fe1d88ffe8aae2d961f8ccd13116331"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end