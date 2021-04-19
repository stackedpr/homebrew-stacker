class Stacker < Formula
  desc "Create Stacked Pull Requests"
  homepage "https://stacker-site-yairhaimo.vercel.app/"
  url "https://homebrew-stacker-yairhaimo.vercel.app/stacker-v0.0.14.tar.gz"
  version "0.0.14"
  sha256 "68a8c0672edc2c55da64f3a109f15df9eba4e4bbcb9aad63189ecf35b40e891f"
  depends_on "gh"

  def install
    bin.install "stacker"
  end

  test do
    assert_match "Stacker v0.0.14", shell_output("#{bin}/stacker --version", 2)
  end
end
