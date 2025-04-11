class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.6/codefresh-v0.88.6-macos-x64.tar.gz"
    version "v0.88.6"
    sha256 "27303963dc200f677c9d9d3d12a4fa25e0686f131873118e18a9b988dab76578"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end