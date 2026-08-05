class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.4/codefresh-v1.2.4-macos-x64.tar.gz"
    version "v1.2.4"
    sha256 "dfdd1d80923243a68feabcbea1ad53528626fa11256bdac3767026929a1e9c24"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end