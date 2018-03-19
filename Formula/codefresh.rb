class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.39/codefresh-v0.8.39-macos-x64.tar.gz"
    version "v0.8.39"
    sha256 "351f3799e397e81e0ae79ff705924714bbd8d88d9e018e7415bc7d477ca9fe62"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end