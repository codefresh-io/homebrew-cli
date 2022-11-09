class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.80.3/codefresh-v0.80.3-macos-x64.tar.gz"
    version "v0.80.3"
    sha256 "f9ad43a381072a9a470d952dfa25f70cd9ed69361c95ffb95082662d66953e44"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end