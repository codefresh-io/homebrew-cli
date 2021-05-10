class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.17/codefresh-v0.75.17-macos-x64.tar.gz"
    version "v0.75.17"
    sha256 "7d58456e22dd31e7f556d6d164edd5047e26e64e93353f7155fa89d17ba3b182"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end