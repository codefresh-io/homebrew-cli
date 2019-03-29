class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.17.11/codefresh-v0.17.11-macos-x64.tar.gz"
    version "v0.17.11"
    sha256 "46633f5985974516500dc97e4a6b906e30004d5ffbd5de421854d3d080ce88a0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end