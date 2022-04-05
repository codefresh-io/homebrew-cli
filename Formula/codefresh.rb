class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.79.0/codefresh-v0.79.0-macos-x64.tar.gz"
    version "v0.79.0"
    sha256 "c426163413c4350550cc2574d55e193c382831afc012a9ad3f19778f6590cba2"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end