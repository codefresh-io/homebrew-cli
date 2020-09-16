class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.72.5/codefresh-v0.72.5-macos-x64.tar.gz"
    version "v0.72.5"
    sha256 "e55c3b347537c37c63909d1e86aee23d02f64db885f6a09a852307f7180945ee"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end