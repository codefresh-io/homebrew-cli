class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.3/codefresh-v0.9.3-macos-x64.tar.gz"
    version "v0.9.3"
    sha256 "c5c79b496bf3684d6521f0f3d8630090ea4ba48bc9b5394d4c4a371a327a448d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end