class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.24/codefresh-v0.73.24-macos-x64.tar.gz"
    version "v0.73.24"
    sha256 "e56836bf84c3ac64f1553616aeb010b837da757a5e5d59049b9a5ec85514df69"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end