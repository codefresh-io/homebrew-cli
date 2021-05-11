class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.18/codefresh-v0.75.18-macos-x64.tar.gz"
    version "v0.75.18"
    sha256 "5c4b5bf70d63b13c28bd0b8774886284cacafbe6fa48c948c2c7ca0ece6563f8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end