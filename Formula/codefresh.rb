class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.37.0/codefresh-v0.37.0-macos-x64.tar.gz"
    version "v0.37.0"
    sha256 "27f31ba9451050522808d6ce1e62857871e595696b82ba0ef1cfd08f902337c5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end