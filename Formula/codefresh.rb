class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.52.1/codefresh-v0.52.1-macos-x64.tar.gz"
    version "v0.52.1"
    sha256 "6474767e88e8c8b18f7eaefbb9d459ff42fafc63cab295ce0d63caeebf7efa02"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end