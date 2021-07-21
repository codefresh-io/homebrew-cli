class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.31/codefresh-v0.75.31-macos-x64.tar.gz"
    version "v0.75.31"
    sha256 "047a6f7d9233b68c82b4fbc3dbfc10e3e015afef58bc0fd0c1a14f7297bbad11"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end