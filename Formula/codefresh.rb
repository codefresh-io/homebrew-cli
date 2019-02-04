class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.13.3/codefresh-v0.13.3-macos-x64.tar.gz"
    version "v0.13.3"
    sha256 "17668d573144e3f982ca27fb63519b1d4fb1b0c7f28814711584419bdf046eec"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end