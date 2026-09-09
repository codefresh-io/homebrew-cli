class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.7/codefresh-v1.2.7-macos-x64.tar.gz"
    version "v1.2.7"
    sha256 "6c480795aa9f42fa149fb6807213adce41870fa67da996e468bf24481d727be7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end