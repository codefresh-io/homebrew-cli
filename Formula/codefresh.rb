class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.30.0/codefresh-v0.30.0-macos-x64.tar.gz"
    version "v0.30.0"
    sha256 "7f0baa7503112da2b56e32111fa8d117d3c1aac1ed59f7b7ca70220f37133b3c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end