class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.3.5/codefresh-v1.3.5-macos-x64.tar.gz"
    version "v1.3.5"
    sha256 "40f66baf7dcdcac414db18f321861c51b15acbc8f3ad464f06ffc3f60ce9e23e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end