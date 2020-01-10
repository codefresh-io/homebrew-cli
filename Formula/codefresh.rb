class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.41.1/codefresh-v0.41.1-macos-x64.tar.gz"
    version "v0.41.1"
    sha256 "16b206715a94fe036b850ea9ec73c9117b26e9a36730ba81236648a4b4ae216c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end