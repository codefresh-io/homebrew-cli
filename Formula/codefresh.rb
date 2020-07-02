class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.0/codefresh-v0.70.0-macos-x64.tar.gz"
    version "v0.70.0"
    sha256 "7cc9f8c406386da3c1c81642eba63620054982a795188a3219adfcbd3e292089"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end