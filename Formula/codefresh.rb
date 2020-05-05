class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.54.0/codefresh-v0.54.0-macos-x64.tar.gz"
    version "v0.54.0"
    sha256 "51bef4cd5dce7594375ed6bc0043cf280615b722e2bde05250baacf09750f4bd"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end