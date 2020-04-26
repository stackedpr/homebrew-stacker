class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site.yairhaimo.now.sh/"
  url "https://homebrew-stacker.yairhaimo.now.sh/stacker-v0.0.5.tar.gz"
  version "0.0.5"
  sha256 "da20db4d4e7712f02df4e24e02e064618163098a0a37a02dd7463a4f3a1dcad4"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.5", shell_output("#{bin}/stacker --version", 2)
  end
end