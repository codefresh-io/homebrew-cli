class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.14.2/codefresh-v0.14.2-macos-x64.tar.gz"
    version "v0.14.2"
    sha256 "51d4ee071de1d1d6a0473148391c73ec77d61969d78f5e5a50695d9f1adcdcf3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end