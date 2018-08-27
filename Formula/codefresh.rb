class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.8.76/codefresh-v0.8.76-macos-x64.tar.gz"
    version "v0.8.76"
    sha256 "b55ac8bdbc9f327b57593922c639bb220068deb3ea989bd6a1bd4c40ea5ba6c1"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end