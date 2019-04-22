class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.18.0/codefresh-v0.18.0-macos-x64.tar.gz"
    version "v0.18.0"
    sha256 "b23f838b2aca4e2c814573bb5e66414d38c98acf817c6af949ab814049d57555"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end