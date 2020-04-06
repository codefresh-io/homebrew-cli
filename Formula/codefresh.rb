class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.50.3/codefresh-v0.50.3-macos-x64.tar.gz"
    version "v0.50.3"
    sha256 "331f906f27f13bc84a5af45e93f1b08656f1047c11fe5eb339f7adac8e9837c7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end