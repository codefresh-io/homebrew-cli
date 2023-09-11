class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.0/codefresh-v0.87.0-macos-x64.tar.gz"
    version "v0.87.0"
    sha256 "28da25244ec905a9163bbc81199046dda3d971078bff40faaea5ae5cfc2b37cb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end