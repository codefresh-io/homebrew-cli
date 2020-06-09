class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.4/codefresh-v0.68.4-macos-x64.tar.gz"
    version "v0.68.4"
    sha256 "3d87aef132e8f9612d8c89347b78c160559c6c8db9ecff99fc2c7f54171d36f3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end