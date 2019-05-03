class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.19.2/codefresh-v0.19.2-macos-x64.tar.gz"
    version "v0.19.2"
    sha256 "e748655233f885feb885cfc977cf83c853638729250c376792d4b6f85f492bcd"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end