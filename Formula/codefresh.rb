class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.7/codefresh-v0.70.7-macos-x64.tar.gz"
    version "v0.70.7"
    sha256 "cb214123340112da010398612a89c998f49abba6e77fe7be56f371ae25345a2c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end