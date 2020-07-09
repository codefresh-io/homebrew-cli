class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.3/codefresh-v0.70.3-macos-x64.tar.gz"
    version "v0.70.3"
    sha256 "b3d0a3c8c72ade9c178a9db3f30e89f3311fe499727f681dc68e0ae52a875c38"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end