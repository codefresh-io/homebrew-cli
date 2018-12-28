class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.17/codefresh-v0.9.17-macos-x64.tar.gz"
    version "v0.9.17"
    sha256 "21a6d56071f432fa08c0de1d6d2371c1d22252223bf9caddc915f51463354753"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end