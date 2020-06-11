class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.5/codefresh-v0.68.5-macos-x64.tar.gz"
    version "v0.68.5"
    sha256 "4bbf44727e7f6d97642840399538eff95b1c02e0a966b7edf5905b1f36971e0c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end