class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.8/codefresh-v0.72.8-macos-x64.tar.gz"
    version "v0.72.8"
    sha256 "262ba8267e523c6e8b23fee460e0029f820d61c8d93cf538126db1865956b41a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end