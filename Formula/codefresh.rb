class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.8/codefresh-v0.68.8-macos-x64.tar.gz"
    version "v0.68.8"
    sha256 "daacacfbeba84c737be5ae939925252639686b297f7b8a4fd5891bdb34964037"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end