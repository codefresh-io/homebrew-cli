class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.6/codefresh-v0.82.6-macos-x64.tar.gz"
    version "v0.82.6"
    sha256 "c96c273ac07cc025645a423c5f2fdb2547fdf6558de4bac082e6b969bcc5860a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end