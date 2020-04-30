class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.52.2/codefresh-v0.52.2-macos-x64.tar.gz"
    version "v0.52.2"
    sha256 "9754aa872a25a181f821398f78da5a891ac2afe76c186fc1e52152f0eeb1f4a3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end