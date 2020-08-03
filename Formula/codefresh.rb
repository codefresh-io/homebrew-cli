class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.71.8/codefresh-v0.71.8-macos-x64.tar.gz"
    version "v0.71.8"
    sha256 "84cd75a6991a897670c6dbb1039001f91d39b8fe316d791e95cb0a8db0f73995"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end