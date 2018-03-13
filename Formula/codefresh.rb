class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.36/codefresh-v0.8.36-macos-x64.tar.gz"
    version "v0.8.36"
    sha256 "8f89e800490540666fd168c6c03113b60e76fb0b82cdd9f2a7f500c7c2f13477"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end