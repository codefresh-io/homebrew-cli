class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.3.0/codefresh-v1.3.0-macos-x64.tar.gz"
    version "v1.3.0"
    sha256 "77e04c247ad8ab2ef2e0af8dc0401a718c958cab4760b8603d31e222bdf1b503"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end