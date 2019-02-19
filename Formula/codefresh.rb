class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.16.7/codefresh-v0.16.7-macos-x64.tar.gz"
    version "v0.16.7"
    sha256 "7d258527070ed9b895fed7491a503e37fd10c09f5c505a64f62caf96b43633bc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end