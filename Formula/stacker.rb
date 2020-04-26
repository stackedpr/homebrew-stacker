class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site.yairhaimo.now.sh/"
  url "https://homebrew-stacker.yairhaimo.now.sh/stacker-v0.0.4.tar.gz"
  version "0.0.4"
  sha256 "a22448817154c8731d9a168c60f4bafb3c97f49d7eff34667fe6999f5faca559"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.2", shell_output("#{bin}/stacker --version", 2)
  end
end