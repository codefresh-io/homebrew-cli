class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.0/codefresh-v0.84.0-macos-x64.tar.gz"
    version "v0.84.0"
    sha256 "822e1f38f988844be73489046cab4d33148f719dcee46b3737ce009e0b365503"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end