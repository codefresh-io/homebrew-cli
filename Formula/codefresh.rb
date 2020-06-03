class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.65.2/codefresh-v0.65.2-macos-x64.tar.gz"
    version "v0.65.2"
    sha256 "a993ff35a77848e070bc953c586c9120ca03757018938472eb20e0a4063f4e93"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end