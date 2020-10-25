class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.12/codefresh-v0.73.12-macos-x64.tar.gz"
    version "v0.73.12"
    sha256 "7f85e5b569eec87acb11d4a8d506e7d7a07e8beddcee36d11fcfbec600c363d9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end