class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.8/codefresh-v0.81.8-macos-x64.tar.gz"
    version "v0.81.8"
    sha256 "2d909b10852edf68d4b909bcc941e40e29347028b9b321d8489bdd2a3d9705e8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end