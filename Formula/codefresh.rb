class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.39.0/codefresh-v0.39.0-macos-x64.tar.gz"
    version "v0.39.0"
    sha256 "86d82e4b4da6c5bfef0a84ed57a1190a550fe74aa34308d834d20ba65239323a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end