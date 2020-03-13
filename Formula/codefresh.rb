class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.11/codefresh-v0.43.11-macos-x64.tar.gz"
    version "v0.43.11"
    sha256 "4f3a337269d9219335528779aae194e232ef0449b9b13cdd06a55f5898c24ad0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end