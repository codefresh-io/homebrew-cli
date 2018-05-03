class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.52/codefresh-v0.8.52-macos-x64.tar.gz"
    version "v0.8.52"
    sha256 "c638e150a140e819df44f542a9a1adb08691ef02eec6b5aabf6ff66eb68349a7"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end