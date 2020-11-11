class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.19/codefresh-v0.73.19-macos-x64.tar.gz"
    version "v0.73.19"
    sha256 "d1ff307a9e9b17df006a0dcd57cb66311561f176641a91c333ac040f7c058197"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end