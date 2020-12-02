class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.23/codefresh-v0.73.23-macos-x64.tar.gz"
    version "v0.73.23"
    sha256 "22b32a1d1abb8f77ca068340d1fb711d16f153e74ac2dd2d338ec58a61c690df"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end