class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.19.4/codefresh-v0.19.4-macos-x64.tar.gz"
    version "v0.19.4"
    sha256 "fbf05222fdf2605462c86846eb0f3be8c3a04cb423b63c78c4c2ec64d8d21a2f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end