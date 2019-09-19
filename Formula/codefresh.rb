class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.33.0/codefresh-v0.33.0-macos-x64.tar.gz"
    version "v0.33.0"
    sha256 "663ef3fda9f437d2046107e48434b9f929910fcdbfd413c9f84da062efa68c77"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end