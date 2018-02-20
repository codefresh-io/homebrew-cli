class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.24/codefresh-v0.8.24-macos-x64.tar.gz"
    version "v0.8.24"
    sha256 "3709d79db94e23a1fb8fd8db16175fea94b5ccbfedb9e2fe976777701f06077f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end