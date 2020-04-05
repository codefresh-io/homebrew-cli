class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.50.2/codefresh-v0.50.2-macos-x64.tar.gz"
    version "v0.50.2"
    sha256 "23ca875f239a8d40a145fce7ad7b15be3303173e3c30a1ff90ee84dfec6fca5c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end