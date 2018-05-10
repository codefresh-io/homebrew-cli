class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.53/codefresh-v0.8.53-macos-x64.tar.gz"
    version "v0.8.53"
    sha256 "3824b9d4b59e22ea1151d322bf3f0219f64a2a0ea46d47ad841aa3d3018497ce"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end