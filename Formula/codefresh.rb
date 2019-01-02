class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.19/codefresh-v0.9.19-macos-x64.tar.gz"
    version "v0.9.19"
    sha256 "5a80314710d1058893303b5c16475268ba833370458fd18a54f2fceaaf5c418e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end