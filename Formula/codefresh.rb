class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.74.2/codefresh-v0.74.2-macos-x64.tar.gz"
    version "v0.74.2"
    sha256 "7bd2982e5d05b588025daa94b90bec8a7187e903bea323b2d6887920c8f7643e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end