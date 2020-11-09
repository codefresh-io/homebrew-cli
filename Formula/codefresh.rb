class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.18/codefresh-v0.73.18-macos-x64.tar.gz"
    version "v0.73.18"
    sha256 "a339ce00d15daea60aac2420d0702c069d50b54e7d8524e3137258e8f466a76f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end