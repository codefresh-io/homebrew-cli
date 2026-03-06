class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.1.0/codefresh-v1.1.0-macos-x64.tar.gz"
    version "v1.1.0"
    sha256 "957b2f05b0e0bbebb799c20af550e6f77241c3ca21e7477d839d3165cda08412"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end