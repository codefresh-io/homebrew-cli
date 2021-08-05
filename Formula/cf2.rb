class Cf2 < Formula
    desc "Codefresh CLI tool, V2"
    homepage "http://cli.codefresh.io"
    url "https://github.com/codefresh-io/cli-v2/releases/download/v0.0.50/cf-darwin-amd64.tar.gz"
    version "v0.0.50"
    sha256 "06888debd085c9b1770d183f3925cdd7109e44c4120a73b715f131b6efdba76c"
  
    def install
      bin.install "cf-darwin-amd64" => "cf"
    end
  
    test do
      system "#{bin}/codefresh version"
    end
  end
