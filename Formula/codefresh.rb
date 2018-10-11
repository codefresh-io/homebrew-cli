class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.77/codefresh-v0.8.77-macos-x64.tar.gz"
    version "v0.8.77"
    sha256 "175d141a73c4b4f22e22c6db039912b9939c450991c24c15283a4d2bf0f5b601"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end