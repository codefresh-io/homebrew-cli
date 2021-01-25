class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.74.8/codefresh-v0.74.8-macos-x64.tar.gz"
    version "v0.74.8"
    sha256 "b4c8f12370d490477884d951e1a0a9c32fdae8d4697a0233d706d56a325dcb13"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end