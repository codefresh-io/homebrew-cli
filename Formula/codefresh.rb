class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.4/codefresh-v0.87.4-macos-x64.tar.gz"
    version "v0.87.4"
    sha256 "510b1d15113ac12134e6dcb48d6e641c4e6e22daf82c534666247c916dd8679d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end