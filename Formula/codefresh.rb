class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.84.9/codefresh-v0.84.9-macos-x64.tar.gz"
    version "v0.84.9"
    sha256 "a2651e6d7faaf4f858498d025199dcd7e0f48bdd634da39f164666d0aa9f6c55"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end