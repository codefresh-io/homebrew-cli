class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.4/codefresh-v0.87.4-macos-x64.tar.gz"
    version "v0.87.4"
    sha256 "8c1cdc2365ec6c5b359012ba85de52e9eb7c98a327ce351c08aa650e84749a23"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end