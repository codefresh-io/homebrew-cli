class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.88/codefresh-v0.8.88-macos-x64.tar.gz"
    version "v0.8.88"
    sha256 "ab7a9908b8894c29998a71b91e9ccaa0b0b908681e2f5b349b7cb0e2b1b7092f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end