class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site-yairhaimo.vercel.app/"
  url "https://homebrew-stacker-yairhaimo.vercel.app/stacker-v0.0.11.tar.gz"
  version "0.0.11"
  sha256 "35829d57e31259357ef3654b302b20351e14fd3147d046c3a5980bf8326dc7d3"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.11", shell_output("#{bin}/stacker --version", 2)
  end
end
