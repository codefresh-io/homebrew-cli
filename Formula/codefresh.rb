class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.33/codefresh-v0.73.33-macos-x64.tar.gz"
    version "v0.73.33"
    sha256 "d5547f4a6b2dc7f992b5f10dfa6fbc4641ec1fbf7d26954587d0ff15c56a4ca3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end