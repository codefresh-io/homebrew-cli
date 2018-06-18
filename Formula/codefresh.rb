class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.55/codefresh-v0.8.55-macos-x64.tar.gz"
    version "v0.8.55"
    sha256 "e3edc41daabf5d648d601e45c694586b06360991247001b19984694cc446bc9d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end