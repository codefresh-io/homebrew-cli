class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.12/codefresh-v0.75.12-macos-x64.tar.gz"
    version "v0.75.12"
    sha256 "94acbfc3bc23734cab89209161f1057e8a796af05e8d091bff1c92e0cb19feab"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end