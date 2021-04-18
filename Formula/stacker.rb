class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site-yairhaimo.vercel.app/"
  url "https://homebrew-stacker-yairhaimo.vercel.app/stacker-v0.0.8.tar.gz"
  version "0.0.8"
  sha256 "2822652569c43d1c92487ecce8fc47d7c4e89f6269146b4437b59dffa48256d0"
  depends_on "hub"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.8", shell_output("#{bin}/stacker --version", 2)
  end
end
