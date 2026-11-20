class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v2.0.0/codefresh-v2.0.0-macos-x64.tar.gz"
    version "v2.0.0"
    sha256 "182b55613754c38c2506daa88761321e2ab588f52b07622a7db65a8af26a04fa"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end