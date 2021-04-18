class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site-yairhaimo.vercel.app/"
  url "https://homebrew-stacker-yairhaimo.vercel.app/stacker-v0.0.7.tar.gz"
  version "0.0.7"
  sha256 "989bcfaf41fdc8fac9551315c879ea6fe6e498e25e42a4c5a8baaf1fb8ab5f73"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.7", shell_output("#{bin}/stacker --version", 2)
  end
end
