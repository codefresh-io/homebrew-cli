class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.20/codefresh-v0.73.20-macos-x64.tar.gz"
    version "v0.73.20"
    sha256 "e26ef89ebdf00dab1075226e97abbbbdcc545d548e6b252877c14a70e5ada7bc"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end