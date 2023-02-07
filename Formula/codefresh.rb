class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.81.9/codefresh-v0.81.9-macos-x64.tar.gz"
    version "v0.81.9"
    sha256 "a610d8c6ed00838113f8230bdb7323e45aeefe05dcb8ffafd7547604169cc307"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end