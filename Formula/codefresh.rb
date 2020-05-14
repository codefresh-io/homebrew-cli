class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.60.0/codefresh-v0.60.0-macos-x64.tar.gz"
    version "v0.60.0"
    sha256 "b41761f5e1c50992f97a0692a2287cae51320b4eae2e9015db00fa6d01d01f22"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end