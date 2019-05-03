class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.19.3/codefresh-v0.19.3-macos-x64.tar.gz"
    version "v0.19.3"
    sha256 "84ac5ab478d501c59f0b23e263ec9388796b8af7ef2a733078c14f62cdf5564f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end