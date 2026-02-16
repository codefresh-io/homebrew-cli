class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.0.4/codefresh-v1.0.4-macos-x64.tar.gz"
    version "v1.0.4"
    sha256 "028a9c2e2dcde2e5b62a595bc05ebdf5b7b9cc197d35bb6d06224dde49adb279"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end