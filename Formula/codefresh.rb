class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.37.6/codefresh-v0.37.6-macos-x64.tar.gz"
    version "v0.37.6"
    sha256 "49e782fe0e9f24db7e3e0a1ffe75f504805b4ced4e1702d35ca4635d3771382e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end