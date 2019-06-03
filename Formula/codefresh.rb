class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.20.1/codefresh-v0.20.1-macos-x64.tar.gz"
    version "v0.20.1"
    sha256 "78337f829ffb50d5ec92cfec3fca7158667c855212c756fe2137723089d104c8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end