class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.0/codefresh-v0.72.0-macos-x64.tar.gz"
    version "v0.72.0"
    sha256 "dd1395980b8647748afa4593ce88d7622fd41d8dd40511614942463502c7efba"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end