class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.34/codefresh-v0.8.34-macos-x64.tar.gz"
    version "v0.8.34"
    sha256 "3f39a81fef149a08bc0a3014ee4292a28edc781884357dee5594aacc738b8a47"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end