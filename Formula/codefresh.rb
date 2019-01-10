class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v0.9.30/codefresh-v0.9.30-macos-x64.tar.gz"
    version "v0.9.30"
    sha256 "19cc63fccf58c50bb95a57d2758e2313384e7c292e90744788ff1ef74b6dff42"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end