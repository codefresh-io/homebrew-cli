class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.39.1/codefresh-v0.39.1-macos-x64.tar.gz"
    version "v0.39.1"
    sha256 "6ed4ad19f91d448af34b07be24c08b760f71fa9b18199fae22a8fd701e822f74"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end