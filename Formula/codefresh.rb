class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.18/codefresh-v0.9.18-macos-x64.tar.gz"
    version "v0.9.18"
    sha256 "432d40f25d9378bac7c43bd71a3d33d095f8a5173d0f4ab62b16272be2e15ca3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end