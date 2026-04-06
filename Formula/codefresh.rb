class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.1.2/codefresh-v1.1.2-macos-x64.tar.gz"
    version "v1.1.2"
    sha256 "d1e975fdb9428b8f064d26b350c2fcccb6c2e0557d94c9b582154946cb1fd02e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end