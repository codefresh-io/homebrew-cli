class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.43.4/codefresh-v0.43.4-macos-x64.tar.gz"
    version "v0.43.4"
    sha256 "1b75c1bb3c43d269caf35aad9aabb4fb19af74196cb10f35a5fcba0fa43c603e"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end