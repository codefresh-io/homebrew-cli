class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.13.4/codefresh-v0.13.4-macos-x64.tar.gz"
    version "v0.13.4"
    sha256 "ffcd9df3b6eaa98d0b52e671850b39dc823af075ea18fe63dcbd7d6067d6f3b3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end