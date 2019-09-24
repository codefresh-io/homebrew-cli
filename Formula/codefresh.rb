class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.33.1/codefresh-v0.33.1-macos-x64.tar.gz"
    version "v0.33.1"
    sha256 "c281706b1e88b93851ea30282f24a5fbecb236ba3edda96bfaa725c7e30282b3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end