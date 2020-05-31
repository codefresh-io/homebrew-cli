class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.64.6/codefresh-v0.64.6-macos-x64.tar.gz"
    version "v0.64.6"
    sha256 "a69c059cb3bc97583ec27ed498bb3955a2ebcda9d37b63dcfcef7f5263816eab"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end