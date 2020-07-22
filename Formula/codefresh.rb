class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.71.2/codefresh-v0.71.2-macos-x64.tar.gz"
    version "v0.71.2"
    sha256 "937db0526aee2cfb2e8deb538464e5ae8c636ab718f47bd8c3de7ce6f6aeb28d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end