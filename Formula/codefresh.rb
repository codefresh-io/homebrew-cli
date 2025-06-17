class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.89.0/codefresh-v0.89.0-macos-x64.tar.gz"
    version "v0.89.0"
    sha256 "6e49d158e55baf1b1f20846508bf9b30461891f6c4e77ac63f64e5438f47aa39"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end