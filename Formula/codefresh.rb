class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.25/codefresh-v0.73.25-macos-x64.tar.gz"
    version "v0.73.25"
    sha256 "32b5d6d3639f2bd05450308de5befa16233aa6084e9cf1f7ac1582bf50ea7699"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end