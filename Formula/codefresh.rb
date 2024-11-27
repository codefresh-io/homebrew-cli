class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.3/codefresh-v0.88.3-macos-x64.tar.gz"
    version "v0.88.3"
    sha256 "b625cf59f5cdfdc0138bf813a636ad1bfc6a90c14afdbb040822c78d476a69f3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end