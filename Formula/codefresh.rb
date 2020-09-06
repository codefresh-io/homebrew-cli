class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.3/codefresh-v0.72.3-macos-x64.tar.gz"
    version "v0.72.3"
    sha256 "c3ee47da6f7b83fe6d6577eea82d4a47d4a142db020b890d41b362ba4e70e269"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end