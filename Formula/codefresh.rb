class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.7/codefresh-v0.9.7-macos-x64.tar.gz"
    version "v0.9.7"
    sha256 "773362855f12668912400330e0168fac8b9967a2dcde7b419f3aca5264e67709"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end