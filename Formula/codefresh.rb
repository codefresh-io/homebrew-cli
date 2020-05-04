class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.52.5/codefresh-v0.52.5-macos-x64.tar.gz"
    version "v0.52.5"
    sha256 "c1613711be7207c9a56bca073dbdb66c958a158b534754818ff8d2a40f6c833a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end