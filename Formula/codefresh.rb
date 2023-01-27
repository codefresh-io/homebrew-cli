class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.6/codefresh-v0.81.6-macos-x64.tar.gz"
    version "v0.81.6"
    sha256 "f02e7877fc5f4a50ff6acc32d8cdba401147779a23fcc135012431c400249f2a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end