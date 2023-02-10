class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.82.1/codefresh-v0.82.1-macos-x64.tar.gz"
    version "v0.82.1"
    sha256 "73b483fdfc91eb4d9ff17aad2d891fa38fbfc8b41b83ba909c53dabdd7349502"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end