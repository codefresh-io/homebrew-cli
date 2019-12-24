class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.39.4/codefresh-v0.39.4-macos-x64.tar.gz"
    version "v0.39.4"
    sha256 "fe5a08361102f5768bcc0dc45e87ca488676ae9ad285618b002d05321390db6c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end