class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.28/codefresh-v0.8.28-macos-x64.tar.gz"
    version "v0.8.28"
    sha256 "2d3098fe948392a19c7f1fff42d019c735e6a015e4008d8db29a342722659534"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end