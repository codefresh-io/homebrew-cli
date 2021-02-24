class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.6/codefresh-v0.75.6-macos-x64.tar.gz"
    version "v0.75.6"
    sha256 "f0014dfd2e5b3b38f891c12c5d109b9a0fc5857e9956ff00fa4c6d197310e91f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end