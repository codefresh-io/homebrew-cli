class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.20.2/codefresh-v0.20.2-macos-x64.tar.gz"
    version "v0.20.2"
    sha256 "b69f32893a8986e702dc395d160495af9f3a4c9effab49658f2abf08e7d964f9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end