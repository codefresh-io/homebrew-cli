class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.12/codefresh-v0.9.12-macos-x64.tar.gz"
    version "v0.9.12"
    sha256 "0d34fa45faeef01a10c27ef62d7ffbdd9d71009a2dfc70f0689c404200d8cf89"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end