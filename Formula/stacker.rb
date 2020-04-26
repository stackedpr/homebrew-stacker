class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site.yairhaimo.now.sh/"
  url "https://homebrew-stacker.yairhaimo.now.sh/stacker-v0.0.6.tar.gz"
  version "0.0.6"
  sha256 "929d47c2778a4a4fc1d0f4d4f0d2db0196782e1b97a190b77a5e555cffe4994e"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.6", shell_output("#{bin}/stacker --version", 2)
  end
end