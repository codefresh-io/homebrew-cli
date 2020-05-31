class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.64.4/codefresh-v0.64.4-macos-x64.tar.gz"
    version "v0.64.4"
    sha256 "38e5aaf05854b09ff43863c0cfd92be0af66cd4122998bcf4ed3b630a2cd44cb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end