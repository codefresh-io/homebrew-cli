class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.66/codefresh-v0.8.66-macos-x64.tar.gz"
    version "v0.8.66"
    sha256 "f35bbf5af687f323dd2f5df8a29d9a82ac8db520ca86918b1d6a74f3c1175cc3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end