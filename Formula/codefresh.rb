class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.17.3/codefresh-v0.17.3-macos-x64.tar.gz"
    version "v0.17.3"
    sha256 "7322b05cf23fce6ecc11a53000e07d461790ddc656e2ebe0f3e407ac88d100e2"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end