class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.17.12/codefresh-v0.17.12-macos-x64.tar.gz"
    version "v0.17.12"
    sha256 "44fcdeda54d8d1d0e750ed299de1f67674b496c280e4189a224d470de13e11a9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end