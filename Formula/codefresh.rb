class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.19.7/codefresh-v0.19.7-macos-x64.tar.gz"
    version "v0.19.7"
    sha256 "7ea7ff966a5700b11dc7abd4c223bd780aff2417eb05d12757c1fedbfe76600e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end