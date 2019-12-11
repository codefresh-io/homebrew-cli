class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.37.2/codefresh-v0.37.2-macos-x64.tar.gz"
    version "v0.37.2"
    sha256 "854b5cd6caf3e5d6ee778bac3d5e274b7c094df6a500da049773afb722eda320"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end