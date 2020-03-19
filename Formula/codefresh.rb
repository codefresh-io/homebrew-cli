class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.15/codefresh-v0.43.15-macos-x64.tar.gz"
    version "v0.43.15"
    sha256 "6f01a1667aea0cfe2f82e3f9b30e0bbf98ca35aa2a5e9729ba9b59e47d150576"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end