class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.42.2/codefresh-v0.42.2-macos-x64.tar.gz"
    version "v0.42.2"
    sha256 "40697b25c48c3c12cdd9fd65c1468c61958ff580173afd8722513d9d4e559057"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end