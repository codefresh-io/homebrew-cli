class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.6/codefresh-v0.87.6-macos-x64.tar.gz"
    version "v0.87.6"
    sha256 "8a6238bd2bcf3e4a55cc8e723e8dc236be6d0a3c52c5469d28d7ece1c952f294"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end