class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.10/codefresh-v0.75.10-macos-x64.tar.gz"
    version "v0.75.10"
    sha256 "5352cd416265b9dac45f84a235a1b96c06ac17af920e1af57d262cdf5879904d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end