class Goran < Formula
  desc "Domain & IP Analysis CLI"
  homepage "https://github.com/beowolx/goran"
  url      "https://github.com/beowolx/goran/releases/download/v0.1.8/goran-0.1.8-x86_64-apple-darwin.tar.gz"
  sha256   "6bd20046c277c82d4f659a6346de62a79f2873d28b6c138504910935879404e3"
  license  "MIT"

  def install
    bin.install "goran"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/goran --help")
  end
end
