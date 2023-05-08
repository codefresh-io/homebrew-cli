class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.1/codefresh-v0.84.1-macos-x64.tar.gz"
    version "v0.84.1"
    sha256 "7ebde60451f8df503bd2cbafb16e1a1265c0253f620427667cba08b1c2871984"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end