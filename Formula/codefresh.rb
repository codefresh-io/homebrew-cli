class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.43/codefresh-v0.8.43-macos-x64.tar.gz"
    version "v0.8.43"
    sha256 "f451f267b9e2974559d8d7cd69223be0e6615a349472a1b969ae2bda8b74c91f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end