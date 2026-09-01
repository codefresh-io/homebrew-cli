class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.6/codefresh-v1.2.6-macos-x64.tar.gz"
    version "v1.2.6"
    sha256 "8b292102dc980a390df87411c0e4999aac33ef96d4cfe93a261847b6fe50e8b8"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end