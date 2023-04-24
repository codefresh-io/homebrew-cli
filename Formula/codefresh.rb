class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.9/codefresh-v0.82.9-macos-x64.tar.gz"
    version "v0.82.9"
    sha256 "914368131c55ffb47f91cd04de51f8fc0fcece917531d9b25d167020ba33e426"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end