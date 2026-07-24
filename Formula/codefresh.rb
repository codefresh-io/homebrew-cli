class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.2.3/codefresh-v1.2.3-macos-x64.tar.gz"
    version "v1.2.3"
    sha256 "f7481e36341e9f3d3402eacafdd580bf5676b25a2429ecda3a4b608a76aeae36"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end