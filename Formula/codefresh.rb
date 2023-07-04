class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.6/codefresh-v0.84.6-macos-x64.tar.gz"
    version "v0.84.6"
    sha256 "3010f3de60f94842b3b8f90b78b28a720070a03bfd5b543b2bb83ab9ecf1dcc2"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end