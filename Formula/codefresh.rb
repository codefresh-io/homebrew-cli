class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.4/codefresh-v0.75.4-macos-x64.tar.gz"
    version "v0.75.4"
    sha256 "542f695338b8310c9db3034230500971aad2b301532205269b3102256fdcca41"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end