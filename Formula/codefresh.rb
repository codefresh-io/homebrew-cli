class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.16/codefresh-v0.43.16-macos-x64.tar.gz"
    version "v0.43.16"
    sha256 "cae421cf23fd3756276c447a99743048322defa5d6e942fafff8882a841379d7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end