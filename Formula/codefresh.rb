class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.22/codefresh-v0.75.22-macos-x64.tar.gz"
    version "v0.75.22"
    sha256 "99ddfb0589fb7d1b3fcf87ef9dfb244bc6130f3600e20cae1220e458d19b53c3"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end