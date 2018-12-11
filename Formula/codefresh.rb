class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.1/codefresh-v0.9.1-macos-x64.tar.gz"
    version "v0.9.1"
    sha256 "efabaf343a1159cd95db21f0409ca7b7d46e78961ab51a5a003cd0a59a26888c"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end