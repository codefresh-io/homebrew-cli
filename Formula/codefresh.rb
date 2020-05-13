class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.59.2/codefresh-v0.59.2-macos-x64.tar.gz"
    version "v0.59.2"
    sha256 "18a0065ec70075b81210162a618b52f83efd823e34247e2d8e8eed16391d7cf5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end