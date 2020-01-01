class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.40.1/codefresh-v0.40.1-macos-x64.tar.gz"
    version "v0.40.1"
    sha256 "27c0de48806f4fd15a619994a35d211e2737927705ae27456a6c3556704ac816"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end