class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.71/codefresh-v0.8.71-macos-x64.tar.gz"
    version "v0.8.71"
    sha256 "c849f2af44bfd4ea7e0987a80aa94244396ce788267dee5f303beb09cf8764e3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end