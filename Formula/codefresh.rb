class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.65/codefresh-v0.8.65-macos-x64.tar.gz"
    version "v0.8.65"
    sha256 "bb788e970f8c1c5dfc1ca59e17027ade6cb5d29fe28acd157ea2501d1f172352"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end