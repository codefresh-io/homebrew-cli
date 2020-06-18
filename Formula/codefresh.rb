class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.10/codefresh-v0.68.10-macos-x64.tar.gz"
    version "v0.68.10"
    sha256 "43083267796cb7a662cdf523d977c8cf0fad1c27dc079fd3a90072b0ee795570"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end