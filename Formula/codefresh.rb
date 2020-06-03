class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.66.0/codefresh-v0.66.0-macos-x64.tar.gz"
    version "v0.66.0"
    sha256 "5356d0295d598239270aed7f601158c73f6368455e21bed7669d54704d61f9a9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end