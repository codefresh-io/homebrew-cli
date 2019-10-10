class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.33.3/codefresh-v0.33.3-macos-x64.tar.gz"
    version "v0.33.3"
    sha256 "0114afe546eeab0eb2617fcbb0fa81b9b465866d73cf339545000336b21a557b"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end