class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.7/codefresh-v0.75.7-macos-x64.tar.gz"
    version "v0.75.7"
    sha256 "bcfdcd73a337adf5f79f35a57afdad258c02817f81246f12e53d26709b2e6e8f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end