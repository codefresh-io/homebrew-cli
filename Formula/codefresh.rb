class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.17.10/codefresh-v0.17.10-macos-x64.tar.gz"
    version "v0.17.10"
    sha256 "061c0682dc8d8bb17c4cfa1a1c7975035dc90af5f0850d340bbd3e814918dbb5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end