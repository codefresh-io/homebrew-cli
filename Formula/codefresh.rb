class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.64.9/codefresh-v0.64.9-macos-x64.tar.gz"
    version "v0.64.9"
    sha256 "3da3813331b52dd1cf3ff46797c1af8f1f6198cbfd1075309327c1a228c8426a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end