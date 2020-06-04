class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.68.1/codefresh-v0.68.1-macos-x64.tar.gz"
    version "v0.68.1"
    sha256 "06a912f7f296d62ad3d9ce86517db0f52bb84edc92833fb1e8877701167ed601"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end