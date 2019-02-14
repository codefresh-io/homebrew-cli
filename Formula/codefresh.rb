class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.16.3/codefresh-v0.16.3-macos-x64.tar.gz"
    version "v0.16.3"
    sha256 "971807b3a6f327d43bcd9ad472d4632efe88853591dc087ee8f20246daf9f403"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end