class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.79.0/codefresh-v0.79.0-macos-x64.tar.gz"
    version "v0.79.0"
    sha256 "e32e74fcea2e7e0e20203410960906f23b088a04663c181fb942695e63581478"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end