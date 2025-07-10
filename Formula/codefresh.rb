class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.89.2/codefresh-v0.89.2-macos-x64.tar.gz"
    version "v0.89.2"
    sha256 "7d423954effcb4cdefac29b27d63cbff700035845ab3aa6e23c042c3c8af2c3e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end