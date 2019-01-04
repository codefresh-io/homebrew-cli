class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.22/codefresh-v0.9.22-macos-x64.tar.gz"
    version "v0.9.22"
    sha256 "cd6a3f8cef4a067bcddc18b620227284124167e1d67533383e63ea4ef156bbc5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end