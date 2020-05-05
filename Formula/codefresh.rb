class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.52.7/codefresh-v0.52.7-macos-x64.tar.gz"
    version "v0.52.7"
    sha256 "f51d6fb75a26c1f03a6af6fae70a4058333bb52fd4f72b860d2159d2d5d446ac"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end