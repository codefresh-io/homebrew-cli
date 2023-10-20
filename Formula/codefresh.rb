class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.1/codefresh-v0.87.1-macos-x64.tar.gz"
    version "v0.87.1"
    sha256 "6c24e7117a2d58b8281c15f49f641e29d277c34fd1de9fb975a8a9c95be3e7f0"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end