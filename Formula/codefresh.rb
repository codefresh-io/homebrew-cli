class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.65.0/codefresh-v0.65.0-macos-x64.tar.gz"
    version "v0.65.0"
    sha256 "27927112d7e5939a4782d4fca3c9dddd29534b49821af926103485da7626e6b5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end