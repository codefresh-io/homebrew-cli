class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.15/codefresh-v0.9.15-macos-x64.tar.gz"
    version "v0.9.15"
    sha256 "adad6ec3402cea5674ba92965fdd8ad6b2b4e40806132bc787535b1b2825510f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end