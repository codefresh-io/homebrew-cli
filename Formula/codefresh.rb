class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.6/codefresh-v0.43.6-macos-x64.tar.gz"
    version "v0.43.6"
    sha256 "46930cf546d50b6286cd240f8775d9de739b1d2bdcce2bb1fc70aa134c07b917"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end