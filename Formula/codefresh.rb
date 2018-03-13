class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.33/codefresh-v0.8.33-macos-x64.tar.gz"
    version "v0.8.33"
    sha256 "942a174d98d5cf5d979cf7e4d637353a3d798306394d171d6d5a2a4944a8de8d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end