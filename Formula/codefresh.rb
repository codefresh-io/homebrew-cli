class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.35.0/codefresh-v0.35.0-macos-x64.tar.gz"
    version "v0.35.0"
    sha256 "84568f1a84a19e3734fc8fa6ab214ddb1ef73196e7a5c7660c5e29b610318c16"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end