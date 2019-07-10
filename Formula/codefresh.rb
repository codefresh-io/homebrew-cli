class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.28.1/codefresh-v0.28.1-macos-x64.tar.gz"
    version "v0.28.1"
    sha256 "2a657ca48f3ef8df248fa77a3ecb4e102bc5c4d513f5ccc56cc3413a04775a20"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end