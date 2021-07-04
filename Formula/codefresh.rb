class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.75.29/codefresh-v0.75.29-macos-x64.tar.gz"
    version "v0.75.29"
    sha256 "b843454247ecc783ec206f468f487e7796a42e16a3be2f76b8cc8ea2bce4329e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end