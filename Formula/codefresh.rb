class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.8/codefresh-v0.82.8-macos-x64.tar.gz"
    version "v0.82.8"
    sha256 "28ef6d63dc879c09a6f06738df4c1d963177b8555b831e056c06eb357e17e591"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end