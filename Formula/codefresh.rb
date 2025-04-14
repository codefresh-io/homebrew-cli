class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.6/codefresh-v0.88.6-macos-x64.tar.gz"
    version "v0.88.6"
    sha256 "35efcacae146f94d562b27170e83cf250a0f9a59e219b94c1a783067b489611b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end