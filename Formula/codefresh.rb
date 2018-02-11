class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.14/codefresh-v0.8.14-macos-x64.tar.gz"
    version "v0.8.14"
    sha256 "f2043f37d1c9f9e0cc518517617836560b4fd4dbb9730ab40a2ade10397ffda1"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end