class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.11/codefresh-v1.2.11-macos-x64.tar.gz"
    version "v1.2.11"
    sha256 "53532a2820425a57872fecfbd6f139e2f3447e28f84f8294fe1194445eee08ba"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end