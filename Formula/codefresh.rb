class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.14.1/codefresh-v0.14.1-macos-x64.tar.gz"
    version "v0.14.1"
    sha256 "82868f37724917e7c8bb5446037f83804863c9256ef637132e7c0a04ca277a4c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end