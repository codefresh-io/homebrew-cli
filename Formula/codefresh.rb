class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.26/codefresh-v0.9.26-macos-x64.tar.gz"
    version "v0.9.26"
    sha256 "080edab36c88973418ab46ea1b3042779e0cdf7fcd469bff7eb05f4f65dd3c05"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end