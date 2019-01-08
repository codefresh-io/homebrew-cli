class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.24/codefresh-v0.9.24-macos-x64.tar.gz"
    version "v0.9.24"
    sha256 "8d25a7ec5968e855bf8a0e5a6e1b84acefc64640c382cd602592fb98989e45e5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end