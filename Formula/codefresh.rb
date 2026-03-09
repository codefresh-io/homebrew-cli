class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.1.1/codefresh-v1.1.1-macos-x64.tar.gz"
    version "v1.1.1"
    sha256 "ff5391803c3bb47bbb81e481a00b4e3f85900481517d4e27446e104278ecdaea"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end