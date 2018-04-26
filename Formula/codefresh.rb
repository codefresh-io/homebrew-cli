class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.48/codefresh-v0.8.48-macos-x64.tar.gz"
    version "v0.8.48"
    sha256 "e064ff37c7a843b497b6a56beaf10409cec4b629d6df5ac504a7ddc0e108e64c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end