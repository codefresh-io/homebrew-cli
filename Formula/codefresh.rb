class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.88.2/codefresh-v0.88.2-macos-x64.tar.gz"
    version "v0.88.2"
    sha256 "8867fa3e39d5c6e0131ab66366c5941bc83275eb368f3f172b9d563199ad5a1f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end