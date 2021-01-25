class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.74.7/codefresh-v0.74.7-macos-x64.tar.gz"
    version "v0.74.7"
    sha256 "3d7b8bbd6483326190369671b124d3c4a4db6be479d376a580eeb43305aae411"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end