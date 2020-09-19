class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.6/codefresh-v0.72.6-macos-x64.tar.gz"
    version "v0.72.6"
    sha256 "6edc26b8ec2d5f26ac62a5430cffa341b72fcee26334762612bc95972ec9fd38"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end