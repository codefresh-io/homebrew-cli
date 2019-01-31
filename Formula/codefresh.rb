class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.13.2/codefresh-v0.13.2-macos-x64.tar.gz"
    version "v0.13.2"
    sha256 "7bebd13418eb140295a70eaba22b2eed4ec29f4fa1e8c632456222fafd7096ab"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end