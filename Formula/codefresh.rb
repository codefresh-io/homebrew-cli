class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.1/codefresh-v0.73.1-macos-x64.tar.gz"
    version "v0.73.1"
    sha256 "b4b0c5992a42c552f5fc68c0e9176b942ea48926dab80dd4878230efae3ba31a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end