class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.21/codefresh-v0.9.21-macos-x64.tar.gz"
    version "v0.9.21"
    sha256 "9baf225e2a329d702b4a7e721847e75de13b59dd2ea4f317bdd525fe165ebab3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end