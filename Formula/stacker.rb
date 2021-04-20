class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site-yairhaimo.vercel.app/"
  url "https://homebrew-stacker-yairhaimo.vercel.app/stacker-v0.0.15.tar.gz"
  version "0.0.15"
  sha256 "a3d4fdbbf013323b14138a8c135f7f7330ad24b5caf91fb9226be4c8dbbd2cc9"
  depends_on "gh"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.15", shell_output("#{bin}/stacker --version", 2)
  end
end
