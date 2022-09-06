class Cf2 < Formula
  desc "Codefresh CLI tool, V2"
  homepage "https://codefresh.io/"
  url "https://github.com/codefresh-io/cli-v2.git",
    tag:      "v0.0.505",
    revision: "e4dcadb3744603c9d132fca39bc048ffb3947321"
  license "Apache-2.0"

  depends_on "go" => :build

  def install
    system "make", "cli-package", "DEV_MODE=false"
    bin.install "dist/cf" => "cf"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cf version")

    assert_match "must provide context name to use\"",
      shell_output("#{bin}/cf config use-context 2>&1", 1)
  end
end
