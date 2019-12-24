class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.39.3/codefresh-v0.39.3-macos-x64.tar.gz"
    version "v0.39.3"
    sha256 "53a83eed44a7b8a4519491a380fbdc1563c4c56675c7ce85606363c598bce4a7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end