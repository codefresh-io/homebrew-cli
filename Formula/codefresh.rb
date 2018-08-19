class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.74/codefresh-v0.8.74-macos-x64.tar.gz"
    version "v0.8.74"
    sha256 "1a7c74462e7f170606e163c32f105331a9d42b2682a2947b9f6eb96265b79ff1"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end