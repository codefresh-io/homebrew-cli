class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.13/codefresh-v1.2.13-macos-x64.tar.gz"
    version "v1.2.13"
    sha256 "a913deb2205d5620a84f6a1a409194038294b20533de11a1281a5ea0e703dc5f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end