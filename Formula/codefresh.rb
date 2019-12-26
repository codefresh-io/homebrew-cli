class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.39.6/codefresh-v0.39.6-macos-x64.tar.gz"
    version "v0.39.6"
    sha256 "dbc69c021b94af13a87b1b275bcfde19da496dd46ecb6eb804ad92497f98222e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end