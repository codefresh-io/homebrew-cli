class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.32/codefresh-v0.75.32-macos-x64.tar.gz"
    version "v0.75.32"
    sha256 "7efcb334132b8425e24dae0ab0de959dc5ce1abe977ff54456b8657d73a08886"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end