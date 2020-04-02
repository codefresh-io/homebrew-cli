class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.50.1/codefresh-v0.50.1-macos-x64.tar.gz"
    version "v0.50.1"
    sha256 "6836063756bfaaf3f61f0a01e3f7e8676091895c521dfbd5bcc16bd0d5e43f65"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end