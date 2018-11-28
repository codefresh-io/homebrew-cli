class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.89/codefresh-v0.8.89-macos-x64.tar.gz"
    version "v0.8.89"
    sha256 "d606cedab1c41119b73884cf86d6abc5ba6b57e78b7431d38bce5a7d278b93de"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end