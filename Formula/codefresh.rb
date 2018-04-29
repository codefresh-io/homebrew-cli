class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.50/codefresh-v0.8.50-macos-x64.tar.gz"
    version "v0.8.50"
    sha256 "a2d90605b3a58078244a4b65ca6781bc1c37a29b0074ede1b39975508afcdb30"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end