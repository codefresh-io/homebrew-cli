class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.70.5/codefresh-v0.70.5-macos-x64.tar.gz"
    version "v0.70.5"
    sha256 "d9762642d431b42c3b52df720b69a1f97b82754c11ef6ca9529e1ad8523bf740"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end