class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.25/codefresh-v0.9.25-macos-x64.tar.gz"
    version "v0.9.25"
    sha256 "83946a7301e643ba959565da8feae449be1be36c57bf13fef0766af69ccda160"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end