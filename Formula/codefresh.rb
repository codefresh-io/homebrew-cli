class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.4/codefresh-v0.73.4-macos-x64.tar.gz"
    version "v0.73.4"
    sha256 "78b795e90596091b5007147a27255a8ad8b8f9d91a3717099a14b7e3210c95e9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end