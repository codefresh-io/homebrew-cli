class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.85.0/codefresh-v0.85.0-macos-x64.tar.gz"
    version "v0.85.0"
    sha256 "38af9a9e35441b928eb2b58724039944d05190f7cd61a12ea6fa62468c671494"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end