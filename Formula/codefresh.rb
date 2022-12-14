class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.3/codefresh-v0.81.3-macos-x64.tar.gz"
    version "v0.81.3"
    sha256 "19f06e5900e295d4fc709b659ccfd031e36db9061886113f7816a1268be97bcc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end