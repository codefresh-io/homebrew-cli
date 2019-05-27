class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.19.6/codefresh-v0.19.6-macos-x64.tar.gz"
    version "v0.19.6"
    sha256 "18515793ddac9a56519bc1fbc7649c3c218929f2585c897e588725cc1073b362"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end