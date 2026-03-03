class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.0.6/codefresh-v1.0.6-macos-x64.tar.gz"
    version "v1.0.6"
    sha256 "b4402054083dc0ef37af29c839def326673f385fd2a84c7b29a3bd2c622271ba"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end