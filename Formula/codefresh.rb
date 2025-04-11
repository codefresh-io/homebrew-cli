class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.6/codefresh-v0.88.6-macos-x64.tar.gz"
    version "v0.88.6"
    sha256 "6a0a443f810cb84380ca66d8d40e2f3ea09cb372a26d55f2c3165fc7a34649eb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end