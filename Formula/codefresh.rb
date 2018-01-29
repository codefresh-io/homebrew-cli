class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.4/codefresh-v0.8.4-macos-x64.tar.gz"
    version "v0.8.4"
    sha256 "599ebba09171d2b24ef9f430cd0c94e0064e2800702cec78f1f118aded3ea692"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end