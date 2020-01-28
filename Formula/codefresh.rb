class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.42.0/codefresh-v0.42.0-macos-x64.tar.gz"
    version "v0.42.0"
    sha256 "08dcfca1a9fd502e4fb9f01b792bd8e61cae9c720fe44814c2e8662a75b4d892"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end