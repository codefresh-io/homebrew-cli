class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.27/codefresh-v0.8.27-macos-x64.tar.gz"
    version "v0.8.27"
    sha256 "d238cad15b07316c5bb25aedb37c59e368ec77b3b2d047f06e9b87258b985b01"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end