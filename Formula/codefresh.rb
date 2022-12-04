class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.0/codefresh-v0.81.0-macos-x64.tar.gz"
    version "v0.81.0"
    sha256 "f3765700d4805b7cff1d19a9bfb9a2a3c0c56334a96bf923bb6c0198ecf10c8a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end