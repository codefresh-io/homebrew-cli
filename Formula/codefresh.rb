class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.13/codefresh-v0.43.13-macos-x64.tar.gz"
    version "v0.43.13"
    sha256 "e79a66034e163400cec754891c7bd420c7879d1b87bebc6545d73a6a63abab57"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end