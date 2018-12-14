class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.2/codefresh-v0.9.2-macos-x64.tar.gz"
    version "v0.9.2"
    sha256 "76082dcca36d6c1f3e27976645bc214112ed0de4497bcbdfe9d1a877dceb6ad5"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end