class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.17/codefresh-v0.73.17-macos-x64.tar.gz"
    version "v0.73.17"
    sha256 "3828aaf5dc0ecec0f7a6d9d1ad18d5368d9e741f13af8ff26a988a5cdc935107"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end