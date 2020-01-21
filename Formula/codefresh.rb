class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.41.12/codefresh-v0.41.12-macos-x64.tar.gz"
    version "v0.41.12"
    sha256 "afe4dd9a3db129a1244a688c0bd09732633bfd34fd88528f266a7ce3104359bd"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end