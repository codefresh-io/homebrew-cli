class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.10/codefresh-v0.9.10-macos-x64.tar.gz"
    version "v0.9.10"
    sha256 "1f614a859c2d303ec6abdd1ddd3f21ec3ec3071b6e92d6f54a2b6e8759bc26b6"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end