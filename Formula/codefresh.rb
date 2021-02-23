class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.5/codefresh-v0.75.5-macos-x64.tar.gz"
    version "v0.75.5"
    sha256 "c966271851f0ac6dbfa504bb0d4b56e1f36b6b4e1b016debaa3dc3cde47b63a8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end