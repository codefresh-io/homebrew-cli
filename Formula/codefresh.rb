class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.3/codefresh-v0.43.3-macos-x64.tar.gz"
    version "v0.43.3"
    sha256 "4e51e06edf65b1d08684643824965f268d2470fe337c767d79bf7a70f701add8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end