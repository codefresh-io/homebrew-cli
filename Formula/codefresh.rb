class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.77.0/codefresh-v0.77.0-macos-x64.tar.gz"
    version "v0.77.0"
    sha256 "44501b114f743041a37938a1f05e0947b82714d625dd2c154a143de12649af1a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end