class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.7/codefresh-v0.43.7-macos-x64.tar.gz"
    version "v0.43.7"
    sha256 "ba3b4a7265fd6cfbe28e642ee11e9ff18a32c3fa33e352d32f36493f8b20a288"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end