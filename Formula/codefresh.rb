class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.13/codefresh-v0.73.13-macos-x64.tar.gz"
    version "v0.73.13"
    sha256 "535d2dc1643005b17fbceb531cfc41a2e7cbbff550fd20344bb384f0e5641d82"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end