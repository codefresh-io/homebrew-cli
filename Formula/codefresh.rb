class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.72/codefresh-v0.8.72-macos-x64.tar.gz"
    version "v0.8.72"
    sha256 "d436314bc05acbb66a1abff95caea625a927d9996680fd971b9454d351956262"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end