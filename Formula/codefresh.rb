class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.3/codefresh-v0.75.3-macos-x64.tar.gz"
    version "v0.75.3"
    sha256 "bf3db58de8159a5bda47faf05d61a1e3c500cd73e355593689ee042e44d51020"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end