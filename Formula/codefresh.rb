class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.21.1/codefresh-v0.21.1-macos-x64.tar.gz"
    version "v0.21.1"
    sha256 "3eb92cf3d23ab11663df97b8416d1c1543082a9999924c4b83995137faa8a846"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end