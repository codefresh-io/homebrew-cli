class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.21.0/codefresh-v0.21.0-macos-x64.tar.gz"
    version "v0.21.0"
    sha256 "40f781babcadd6465aae86ffd4d700999789443e4df4f58f1fbb5f0fd5cbc930"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end