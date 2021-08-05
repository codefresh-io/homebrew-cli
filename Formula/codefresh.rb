class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.34/codefresh-v0.75.34-macos-x64.tar.gz"
    version "v0.75.34"
    sha256 "a33be67cbf4129ef5d281ced50de66b6d78c8ee7894816006a01a40d45436eed"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end