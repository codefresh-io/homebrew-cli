class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.62/codefresh-v0.8.62-macos-x64.tar.gz"
    version "v0.8.62"
    sha256 "33da9f0176039ad8f6ab3c3e0a7cd6ac710ee7bde5588e048cf9af87eea32237"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end