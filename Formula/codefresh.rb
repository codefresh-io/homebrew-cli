class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.50.5/codefresh-v0.50.5-macos-x64.tar.gz"
    version "v0.50.5"
    sha256 "aaa98ac18ce85febdc435704c2a2363164ae3b02b83059b7c3a599e88753c1cf"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end