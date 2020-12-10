class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.73.28/codefresh-v0.73.28-macos-x64.tar.gz"
    version "v0.73.28"
    sha256 "d0c895b9139230e520f21f0bce04460d34b70e183ccfd0b51c11820f09b2068d"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end