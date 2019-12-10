class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.36.2/codefresh-v0.36.2-macos-x64.tar.gz"
    version "v0.36.2"
    sha256 "6a4ee51322c147c262404475d1d503d3a71fea96c3963dbd0a69f0f9732a79e3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end