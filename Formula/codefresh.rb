class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.83.2/codefresh-v0.83.2-macos-x64.tar.gz"
    version "v0.83.2"
    sha256 "b9c9c4f3a34752e866627d08cab52d99f84061fe7693b83ffc6b42fac7a2612a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end