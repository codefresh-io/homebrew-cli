class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.54/codefresh-v0.8.54-macos-x64.tar.gz"
    version "v0.8.54"
    sha256 "c6c8422bbd85efe10020adc308dfb5a95fb9db50c118b1f7543d8a4155831fae"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end