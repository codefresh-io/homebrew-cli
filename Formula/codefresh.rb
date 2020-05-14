class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.60.2/codefresh-v0.60.2-macos-x64.tar.gz"
    version "v0.60.2"
    sha256 "b782f65eeafe589738faa01e003281ed1fc295724050b727717b3a80e66b0bf9"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end