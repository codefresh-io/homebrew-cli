class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.15/codefresh-v0.8.15-macos-x64.tar.gz"
    version "v0.8.15"
    sha256 "e6f608db1b237e43c265629494cda8c89c3b81995630e8572bf3243201745511"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end