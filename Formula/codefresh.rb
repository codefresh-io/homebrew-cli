class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.30.1/codefresh-v0.30.1-macos-x64.tar.gz"
    version "v0.30.1"
    sha256 "8800b70fe9273a36f62e9033f53abd77a7371da624a9b5290b612d8c25f64c41"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end