class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.33.2/codefresh-v0.33.2-macos-x64.tar.gz"
    version "v0.33.2"
    sha256 "f2f3af2e2999ccc6f12e06ed6fac749d9296eb9ef0bf41da26204280c3b1022f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end