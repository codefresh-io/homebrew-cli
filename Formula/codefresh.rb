class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.9/codefresh-v0.43.9-macos-x64.tar.gz"
    version "v0.43.9"
    sha256 "e12dd014688a4e6d3ac6abcfcef30836ee6af2868d54798c08ef6daa93acbd8b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end