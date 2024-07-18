class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.87.4/codefresh-v0.87.4-macos-x64.tar.gz"
    version "v0.87.4"
    sha256 "10eb2a3ee5bdbc40af0e5aaa027d6e8a13addbdec4b0784ec59daaeb1b5221c7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end