class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.21/codefresh-v0.75.21-macos-x64.tar.gz"
    version "v0.75.21"
    sha256 "858114da916ab35ec8930caf377845c347e4931f0ee00a2dd1116b164059d3d2"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end