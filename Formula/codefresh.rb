class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.29.0/codefresh-v0.29.0-macos-x64.tar.gz"
    version "v0.29.0"
    sha256 "15dd400b3ae0ce5fc84e402184ce149228c5af6c8bb18176ede339f8b7c4bb40"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end