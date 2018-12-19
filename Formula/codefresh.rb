class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.8/codefresh-v0.9.8-macos-x64.tar.gz"
    version "v0.9.8"
    sha256 "ea43d8df101578e8f7f9619aae6a1a804fd85ad665316f50f163062c0020ebde"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end