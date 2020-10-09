class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.2/codefresh-v0.73.2-macos-x64.tar.gz"
    version "v0.73.2"
    sha256 "98c29805b8d89aa5a492a8ecbfa41abf1f87acfbb70234d56093d75c57c3c37e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end