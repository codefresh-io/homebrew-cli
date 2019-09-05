class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.32.0/codefresh-v0.32.0-macos-x64.tar.gz"
    version "v0.32.0"
    sha256 "fc9483bfa9e54a5d55143bf091a897ec3f1ea1c4eaef59135ce320ebb87c19ea"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end