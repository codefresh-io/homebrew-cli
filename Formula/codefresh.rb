class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.9/codefresh-v0.73.9-macos-x64.tar.gz"
    version "v0.73.9"
    sha256 "db2d0cd1ad0886f1cd8c84fa94d186c419a5fe5894501783174750bf58321435"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end