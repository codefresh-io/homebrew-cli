class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.22/codefresh-v0.73.22-macos-x64.tar.gz"
    version "v0.73.22"
    sha256 "add7e5ea1be64e1425ebaf8018a179f379e3a13c58ae1688decf935c195b4c8e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end