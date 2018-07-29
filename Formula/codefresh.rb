class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.68/codefresh-v0.8.68-macos-x64.tar.gz"
    version "v0.8.68"
    sha256 "2b944afa2bc92d633ae5a1190dccfdea97df723b0439b27858d81fb60b62fb29"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end