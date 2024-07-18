class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.5/codefresh-v0.87.5-macos-x64.tar.gz"
    version "v0.87.5"
    sha256 "d5751e2a2e93be4ad51aa827e518ee2ba03a62e3ae54979ad818bccfd14ddb10"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end