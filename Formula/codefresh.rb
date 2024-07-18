class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.5/codefresh-v0.87.5-macos-x64.tar.gz"
    version "v0.87.5"
    sha256 "f53a296b2413e2cbb7b7c6f6ad68841e6411ac71a02011d5776c76f02b23505e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end