class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.57.0/codefresh-v0.57.0-macos-x64.tar.gz"
    version "v0.57.0"
    sha256 "d040717f3740e53c0852c40bc1f498092b4f26c626a6772ccc53871ce368e2cc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end