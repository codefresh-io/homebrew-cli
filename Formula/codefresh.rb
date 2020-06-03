class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.0/codefresh-v0.68.0-macos-x64.tar.gz"
    version "v0.68.0"
    sha256 "cf088d637a50ff9fa1c1764a8b313d6d578f0a0eca43b2dff033ca364ffbdbb8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end