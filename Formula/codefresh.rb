class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.3.1/codefresh-v1.3.1-macos-x64.tar.gz"
    version "v1.3.1"
    sha256 "9c58427f80fd9bba252be604306e2d318d79a87b53361d4f3cb302c378bf8dc7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end