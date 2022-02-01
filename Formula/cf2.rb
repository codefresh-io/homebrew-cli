class Cf2 < Formula
  desc "Codefresh CLI tool, V2"
  homepage "https://codefresh.io/"
  url "https://github.com/codefresh-io/cli-v2.git",
    tag:      "v0.0.217",
    revision: "c765a190298c1bfd619686ad37a0b6882468b4a7"
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
