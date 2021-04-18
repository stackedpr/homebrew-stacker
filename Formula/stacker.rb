class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site-yairhaimo.vercel.app/"
  url "https://homebrew-stacker-yairhaimo.vercel.app/stacker-v0.0.10.tar.gz"
  version "0.0.10"
  sha256 "feebc58dfccd14621dc735bf73dad963a873de6d849ae362d97785c2d4e97e98"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.10", shell_output("#{bin}/stacker --version", 2)
  end
end
