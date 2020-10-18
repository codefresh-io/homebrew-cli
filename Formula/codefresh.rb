class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.7/codefresh-v0.73.7-macos-x64.tar.gz"
    version "v0.73.7"
    sha256 "b1948a93eb3f033dc71300a72d0ca823cb3d3d3a120a29d7625d5b50544cf70a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end