class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.96/codefresh-v0.8.96-macos-x64.tar.gz"
    version "v0.8.96"
    sha256 "5ba873b3dd468e8ee438e45cda79d9d2a2e35f2f34e40a2435d4282bdf3352cb"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end