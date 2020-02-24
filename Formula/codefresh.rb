class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.2/codefresh-v0.43.2-macos-x64.tar.gz"
    version "v0.43.2"
    sha256 "a93b23ca0e888b6670313e40177b2a6c69db7a6d89ecd6b3643c8a20c34d008a"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end