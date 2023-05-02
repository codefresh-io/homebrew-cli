class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.83.3/codefresh-v0.83.3-macos-x64.tar.gz"
    version "v0.83.3"
    sha256 "be29130ca59e721eda5b28c18ec464c2773fb50a509cca4156f9b9c2a4f1e744"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end