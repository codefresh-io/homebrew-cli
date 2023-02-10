class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.0/codefresh-v0.82.0-macos-x64.tar.gz"
    version "v0.82.0"
    sha256 "57af64346706cec8002af772c39ca8c9c3b95eba32c4eda27fbfa0b42d9313ae"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end