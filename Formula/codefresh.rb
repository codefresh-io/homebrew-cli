class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.80.2/codefresh-v0.80.2-macos-x64.tar.gz"
    version "v0.80.2"
    sha256 "3e7283ee609e521f766ad813fa47bce56e98a4adb93c9083b88b164340630f4c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end