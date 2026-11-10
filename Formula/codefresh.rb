class Codefresh < Formula
    desc "Codefresh CLI provides a full and flexible interface to interact with Codefresh."
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli/releases/download/v1.3.4/codefresh-v1.3.4-macos-x64.tar.gz"
    version "v1.3.4"
    sha256 "dc8bfa25b3b08ad3c4914f908def0fb8d624540f6c372eba23a4438f543aec7f"
  
    def install
      bin.install "codefresh"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end