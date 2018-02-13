class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.19/codefresh-v0.8.19-macos-x64.tar.gz"
    version "v0.8.19"
    sha256 "5e08a76defd7274b8d361b59529bee4aba01c45d888d3d1e63ec9927263e29ed"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end