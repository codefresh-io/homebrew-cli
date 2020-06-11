class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.6/codefresh-v0.68.6-macos-x64.tar.gz"
    version "v0.68.6"
    sha256 "7ca68636f382a8dfa85c79192babbdd9456f4f2daf4d440f83d4474c6d93982a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end