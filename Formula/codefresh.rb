class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.34.0/codefresh-v0.34.0-macos-x64.tar.gz"
    version "v0.34.0"
    sha256 "6144a46e8daae9ca9a4294a9e939f7fa4cc58b94982ef9bad7731dce9e2ccd59"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end