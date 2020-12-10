class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.30/codefresh-v0.73.30-macos-x64.tar.gz"
    version "v0.73.30"
    sha256 "d2910025f098a760a382b2e6470f37ab097cc1749f5d6d7bc7c78f3b35c0764d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end