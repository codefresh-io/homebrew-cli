class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.13/codefresh-v0.75.13-macos-x64.tar.gz"
    version "v0.75.13"
    sha256 "7fd3a480a4db67d9019febe06d582af0de03a9d51a7f9c3f8881b3ca050bbef1"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end