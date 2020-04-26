class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site.yairhaimo.now.sh/"
  url "https://homebrew-stacker.yairhaimo.now.sh/stacker-v0.0.2.tar.gz"
  version "0.0.2"
  sha256 "822d838630b27c63b57140b569c69ddcc1ba85c87018881afe29f3b52ce40c04"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.2", shell_output("#{bin}/stacker --version", 2)
  end
end