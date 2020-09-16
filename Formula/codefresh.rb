class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.4/codefresh-v0.72.4-macos-x64.tar.gz"
    version "v0.72.4"
    sha256 "6fcef1525aba89f0bd68ec5491a4e6c4cdacb23244945613a636ab802780777b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end