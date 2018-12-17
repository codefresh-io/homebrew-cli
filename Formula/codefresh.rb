class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.4/codefresh-v0.9.4-macos-x64.tar.gz"
    version "v0.9.4"
    sha256 "4f148af38378165818b26b74c808d420ef8c95e7832da52eb14554add8deb377"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end